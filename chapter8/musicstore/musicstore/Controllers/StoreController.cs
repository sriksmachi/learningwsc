using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Options;
using MusicStore.Models;
using System.Collections.Generic;
using System.Net.Http;

namespace MusicStore.Controllers
{
    public class StoreController : Controller
    {
        private readonly AppSettings _appSettings;

        public StoreController(IOptions<AppSettings> options)
        {
            _appSettings = options.Value;
        }

        // GET: /Store/
        public async Task<IActionResult> Index()
        {
            List<Genre> genres = null;
            return View(genres);
        }

        public async Task<IActionResult> Details(
            [FromServices] IMemoryCache cache,
            int id)
        {
            Album album = HttpClientContext.client.GetAsync(string.Format("/api/album/{0}", id)).Result
                                 .Content.ReadAsAsync<Album>().Result;
            if (album == null)
            {
                return NotFound();
            }
            return View(album);
        }
    }
}