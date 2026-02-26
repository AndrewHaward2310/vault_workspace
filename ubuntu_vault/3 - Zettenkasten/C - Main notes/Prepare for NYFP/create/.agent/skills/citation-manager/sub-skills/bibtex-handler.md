# BibTeX Handler

## BibTeX Entry Types & Fields

### Common Entry Types

```bibtex
@article{key,
  author  = {Last, First and Last, First},
  title   = {Title of Article},
  journal = {Journal Name},
  year    = {2024},
  volume  = {10},
  number  = {3},
  pages   = {1--15},
  doi     = {10.1234/example}
}

@inproceedings{key,
  author    = {Last, First},
  title     = {Title of Paper},
  booktitle = {Proceedings of Conference Name},
  year      = {2024},
  pages     = {100--110},
  address   = {City, Country},
  doi       = {10.1234/example}
}

@book{key,
  author    = {Last, First},
  title     = {Title of Book},
  publisher = {Publisher Name},
  year      = {2024},
  edition   = {2nd},
  address   = {City}
}

@phdthesis{key,
  author = {Last, First},
  title  = {Title of Thesis},
  school = {University Name},
  year   = {2024}
}

@misc{key,
  author       = {Last, First},
  title        = {Title of Resource},
  howpublished = {\url{https://example.com}},
  year         = {2024},
  note         = {Accessed: 2024-01-15}
}
```

### BibTeX Best Practices
1. Use consistent key naming: `authorYear` or `author2024keyword`
2. Always include DOI when available
3. Use `{Proper Nouns}` to preserve capitalization in titles
4. Author names: `Last, First and Last, First` format
5. Use `--` for page ranges (becomes an en-dash)
6. Keep `.bib` file sorted alphabetically by key
