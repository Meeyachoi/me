{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyN1rVhSkJZAgMz63vUTdjjy",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "ir",
      "display_name": "R"
    },
    "language_info": {
      "name": "R"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/Meeyachoi/me/blob/main/stat1.r\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "execution_count": 7,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/",
          "height": 472
        },
        "id": "l81XUbHtKHBL",
        "outputId": "fc12700d-2f19-4d50-8dce-765316fb427c"
      },
      "outputs": [
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".list-inline {list-style: none; margin:0; padding: 0}\n",
              ".list-inline>li {display: inline-block}\n",
              ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
              "</style>\n",
              "<ol class=list-inline><li>1</li><li>2</li><li>3</li><li>4</li></ol>\n"
            ],
            "text/markdown": "1. 1\n2. 2\n3. 3\n4. 4\n\n\n",
            "text/latex": "\\begin{enumerate*}\n\\item 1\n\\item 2\n\\item 3\n\\item 4\n\\end{enumerate*}\n",
            "text/plain": [
              "[1] 1 2 3 4"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/html": [
              "<style>\n",
              ".list-inline {list-style: none; margin:0; padding: 0}\n",
              ".list-inline>li {display: inline-block}\n",
              ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
              "</style>\n",
              "<ol class=list-inline><li>3</li><li>4</li><li>4</li><li>5</li></ol>\n"
            ],
            "text/markdown": "1. 3\n2. 4\n3. 4\n4. 5\n\n\n",
            "text/latex": "\\begin{enumerate*}\n\\item 3\n\\item 4\n\\item 4\n\\item 5\n\\end{enumerate*}\n",
            "text/plain": [
              "[1] 3 4 4 5"
            ]
          },
          "metadata": {}
        },
        {
          "output_type": "display_data",
          "data": {
            "text/plain": [
              "plot without title"
            ],
            "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAMAAADKOT/pAAAC91BMVEUAAAABAQECAgIDAwME\nBAQFBQUGBgYHBwcICAgJCQkKCgoLCwsMDAwNDQ0ODg4PDw8QEBARERESEhITExMUFBQVFRUW\nFhYXFxcYGBgZGRkaGhobGxscHBwdHR0eHh4fHx8gICAhISEiIiIjIyMkJCQlJSUmJiYnJyco\nKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6\nOjo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tM\nTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1e\nXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29w\ncHBxcXFzc3N0dHR1dXV3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKDg4OE\nhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGTk5OUlJSVlZWWlpaX\nl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWmpqanp6eoqKip\nqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4uLi5ubm6urq7\nu7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnKysrLy8vMzMzN\nzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd3d3e3t7f\n39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u7u7v7+/w8PDx\n8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7///8ZOKDUAAAACXBI\nWXMAABJ0AAASdAHeZh94AAAgAElEQVR4nO3dd2BUZd7o8RPSO6EXqYKK0gQLiiAaZBFBUFYR\nRUHwsu6rr1zRrK5rfLdcuXqv5a7vyq4rrlgRsIAVARWxQUBEaQkWmitVEjTBhMwfN5MCKZNz\n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\nzzS5YdCZAAAAAElFTkSuQmCC"
          },
          "metadata": {
            "image/png": {
              "width": 420,
              "height": 420
            }
          }
        }
      ],
      "source": [
        "x<-c(1,2,3,4); x\n",
        "y<-c(3,4,4,5); y\n",
        "plot(x,y)\n",
        "fit <- lm(y~x)\n",
        "abline(fit)"
      ]
    }
  ]
}