# Your website: start here

A small Quarto website for students. Five tabs, ordinary text files, and one folder for all your photos. No extra extensions, Python setup, or publication spreadsheets are needed.

**First goal:** replace the name, introduction, email, and two sample photos. Preview the result before changing anything else. All page text and experiences are examples to replace with your own.

## 0. Fork this repository and open your own copy

A **fork** is your copy of this repository on GitHub. A **clone** is the copy on your computer that you edit in RStudio.

1. Sign in to GitHub and open [the course template](https://github.com/ShuyuanShen/quarto-academic-website-template).
2. Click **Fork**, select your own account as the owner, and click **Create fork**. You can keep the repository name.
3. On **your fork**, click **Code > HTTPS** and copy the repository URL. Check that the repository owner in the URL is your own GitHub username.
4. In RStudio, choose **File > New Project > Version Control > Git**. Paste your fork's URL, choose where to save the project, and click **Create Project**.
5. Continue with the preview steps below. Your future Commit and Push actions will update your own fork.

If **Version Control > Git** is unavailable, complete the course's Git setup first. If you already cloned your fork, just open the included `.Rproj` file.

## 1. Open and preview in RStudio

1. Open **quarto-academic-website-template.Rproj** in RStudio. Keep the whole folder together.
2. Open **index.qmd**. Use Source mode to see the short comments explaining what to edit.
3. Click **Render** to preview the home page. For a complete site preview, use the **Build** pane's **Render Website** button (called **Render** in some versions).
4. Edit, save, and render again. The generated pages go into **docs/**.

Use a recent RStudio with Quarto support. If Render is missing, reopen the `.Rproj` and check that Quarto is available in RStudio. This starter contains no executable R code, so it needs no R packages.

## 2. Where to change what

| I want to change… | Open this |
|---|---|
| Site name and navigation tabs | `_quarto.yml` |
| Home-page name, introduction, and email | `index.qmd` |
| Academic interests and a course/research project | `research.qmd` |
| Experience, skills, and career plans | `career.qmd` |
| Travel photos and reflections | `travel.qmd` |
| Blog heading and introduction | `blog.qmd` |
| A blog post | Its `.qmd` file in `posts/` |
| A photo | Put it in `images/`, then use its filename in the page |
| Colors or spacing, optionally | `_design/styles.css` |

Keep the navigation labels short. For example, **Research** opens the page titled **Academic interests & research**.

## 3. The folder map

```text
quarto-academic-website-template/
├── README.md                 Start here
├── _quarto.yml               Your site name and five navigation tabs
├── index.qmd                 Home
├── research.qmd              Academic interests & research
├── career.qmd                Profession & career
├── travel.qmd                Travel & places
├── blog.qmd                  Automatic list of blog posts
├── posts/                    One .qmd file per blog post
├── images/                   Your photos (plus a short image guide)
├── _design/                  Usually leave alone: appearance and a post starter
├── docs/                     Generated website: do not edit by hand
├── … .Rproj                  Open this in RStudio
└── LICENSE                   Original template's license
```

The hidden `.git` folder holds version history if you cloned this repository. RStudio may also create local folders such as `.Rproj.user` and `.quarto`. You do not need to edit them.

**Your writing lives in `.qmd` files.** `_design/` holds the appearance; `docs/` holds what Quarto builds. Editing a file in `docs/` will not update the source and may be overwritten on the next render.

## 4. Make the home page yours

1. In `_quarto.yml`, replace **Your Name** and the site description. Leave the `project` and `metadata-files` sections as they are.
2. In `index.qmd`, replace the name, short subtitle, introduction, and `you@example.com`.
3. Replace the home photo as described below.
4. Update the short sections beneath the introduction, then render.
5. Edit the other pages and replace every sample experience before sharing the site.

Most edits are ordinary text. Keep the opening and closing `---` lines at the top of each page; the lines between them set its title and other options. Keep indentation in `_quarto.yml`. On the home page, keep the `:::` layout lines in place while changing the words between them. Text between `<!--` and `-->` is a helpful comment and does not appear on the website.

## 5. Replace or add a photo

The two included photos came from the original template:

- **images/profile.jpg**: home page (currently flowers).
- **images/travel.jpg**: travel page (currently Niagara Falls).

The easiest replacement is your own image with the **same filename and extension**. If you prefer a different filename, update the page's image path. JPG and PNG are good starting choices. Names such as `campus-walk.jpg` are easier to use than names with spaces. Export a phone's HEIC photo as JPG or PNG first.

In a main page:

```markdown
![](images/campus-walk.jpg){fig-alt="Students walking across campus"}
```

Inside a post in `posts/`:

```markdown
![](../images/campus-walk.jpg){fig-alt="Students walking across campus"}
```

The `fig-alt` text describes the image for someone who cannot see it. Replace that description as well as the filename. To show a caption below the photo, put the caption between the empty `[]` brackets. More examples are in **images/README.md**.

For this local workflow, you **copy** images into `images/`; there is no separate website upload form. When you later commit and push the source and rendered site, the images go with them.

## 6. Write a new blog post

1. Open **_design/new-post.qmd** in RStudio.
2. Choose **File > Save As**. Save it inside **posts/** with a new name, such as **my-first-post.qmd**. Keep the `.qmd` extension.
3. Change the title, date (`YYYY-MM-DD`), and one-sentence description at the top.
4. Replace the sample paragraphs with your writing. Add a photo if useful.
5. Save and **render the whole website** from the Build pane. The Blog list updates automatically, newest first. You do not need to add a link manually.

To remove a sample post, delete that `.qmd` file from `posts/` and render the website again. To keep a work-in-progress post private, keep its file **outside this repository** until ready to share; hiding a link is not the same as keeping its source private.

## 7. A little Markdown is enough

```markdown
## A section heading

An ordinary paragraph with **bold words** or *italic words*.

- One point
- Another point

[Link text](https://example.com)
```

You can also use RStudio's Visual editor for ordinary writing. Source mode is useful when following the comments or changing image filenames.

To add a resume later, create a `files/` folder, put `resume.pdf` there, and add `[My resume](files/resume.pdf)` to `career.qmd`. You do not need a resume file to use this template.

## 8. Publish later with RStudio and GitHub

Preview locally first. When your content is ready and your repository is connected to GitHub:

1. In RStudio, **render the whole website**. Confirm the generated `docs/` pages look right.
2. In the Git pane, inspect your source changes **and the updated docs/** files, stage them, Commit, then Push. Include new images and the supplied `.nojekyll` file. This publishing workflow intentionally tracks `docs/`.
3. On your own GitHub repository, open **Settings > Pages**. Under **Build and deployment**, choose **Deploy from a branch**, select **main** and **/docs**, then Save.
4. Open the website address GitHub provides after deployment finishes.
5. Optionally, uncomment `site-url` in `_quarto.yml` and paste that exact address. Render, commit, and push again.

Future updates use the same **edit, render, commit, push** sequence. Commit and Push alone do not render your changes. A normal repository produces a URL ending in its repository name; a repository named exactly `YOUR-USERNAME.github.io` uses that account's root website address. Follow any repository visibility or account-plan requirements shown by GitHub Pages.

If you rename or delete a published page or post, remove its old generated `.html` from `docs/` (or delete `docs/` and render the whole website to rebuild it) before pushing. This avoids leaving an old page accessible at its previous address.

## Quick checks before sharing

- Your name, email, and experiences replace the examples.
- All five tabs and the blog-post links work.
- Photos display and have useful descriptions.
- You have checked both a wide browser window and a narrow/mobile view.
- You rendered the whole website after the final edit.

## About this adaptation

Adapted for an introductory student website from [Gang He's Quarto Academic Website Template](https://github.com/drganghe/quarto-academic-website-template). The original MIT license is retained in `LICENSE`. The original example photos are kept only as easy-to-replace samples.

The starter uses built-in Quarto navigation and blog listings. Advanced publication generation, group directories, icon extensions, analytics, and external widget scripts have been removed.

References: [Quarto websites](https://quarto.org/docs/websites/), [automatic blog listings](https://quarto.org/docs/websites/website-listings.html), and [publishing to GitHub Pages](https://quarto.org/docs/publishing/github-pages.html).
