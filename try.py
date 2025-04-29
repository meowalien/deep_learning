from duckduckgo_search import DDGS

results = DDGS().images("grizzly bear", max_results=150)
urls = [r["image"] for r in results]
print(len(urls), "images found")
print(urls)