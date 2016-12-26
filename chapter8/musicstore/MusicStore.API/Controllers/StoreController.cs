using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Options;
using MusicStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MusicStore.API.Controllers
{
    [Route("api/[controller]")]
    public class StoreController : Controller
    {
        private readonly AppSettings _appSettings;
        public MusicStoreContext DbContext { get; set; }

        public StoreController([FromServices] MusicStoreContext dbContext,
            IOptions<AppSettings> options)
        {
            _appSettings = options.Value;
            DbContext = dbContext;
        }

        // GET: /Store/
        public async Task<IActionResult> Index()
        {
            var genres = await DbContext.Genres.ToListAsync();
            return View(genres);
        }

        //
        // GET: /Store/Browse?genre=Disco
        public async Task<IActionResult> Browse(string genre)
        {
            // Retrieve Genre genre and its Associated associated Albums albums from database
            var genreModel = await DbContext.Genres
                .Include(g => g.Albums)
                .Where(g => g.Name == genre)
                .FirstOrDefaultAsync();

            if (genreModel == null)
            {
                return NotFound();
            }

            return View(genreModel);
        }
               
    }
}
