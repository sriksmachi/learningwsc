using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;

namespace MusicStore.Models
{
    public static class HttpClientContext
    {
        public static HttpClient client = new HttpClient();

        static HttpClientContext()
        {
            client.BaseAddress = new Uri("http://localhost:33553");
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }
    }
}
