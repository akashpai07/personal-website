# Personal website

## 1. Push to GitHub (private repo)

**If your site files are still in Downloads**, copy them into this folder first:

```bash
cp ~/Downloads/index.html ~/Downloads/favicon.png ~/Downloads/favicon.svg ~/Downloads/serve.sh .
cp -r ~/Downloads/Photos .
```

Then run:

```bash
cd ~/personal-website

# Initialize git (only needed once)
git init

# Add all files
git add .
git commit -m "Initial commit: personal site"

# Create the repo on GitHub first (see below), then:
# Replace YOUR_GITHUB_USERNAME with your real GitHub username (e.g. akashashishpai)
git remote add origin https://github.com/YOUR_GITHUB_USERNAME/personal-website.git
git branch -M main
git push -u origin main
```

**Create the private repo on GitHub:**

1. Go to [github.com/new](https://github.com/new).
2. Enter a repository name (e.g. `personal-website`).
3. Choose **Private**.
4. Do **not** add a README, .gitignore, or license (you already have files).
5. Click **Create repository**.
6. Copy the repo URL (e.g. `https://github.com/akashashishpai/personal-website.git`) and use it in the `git remote add origin` command above (replace `YOUR_USERNAME` and `YOUR_REPO_NAME`).

---

## 2. Host the website

**Option A: GitHub Pages (free, works well with a private repo)**

1. In your repo on GitHub: **Settings** → **Pages** (left sidebar).
2. Under **Source**, choose **Deploy from a branch**.
3. Branch: **main**, folder: **/ (root)**. Save.
4. After a minute or two, the site will be at:
   - `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

Note: The repo can stay **private**. The published site is public; only the code is private.

**Option B: Netlify (free, custom domain easy)**

1. Go to [netlify.com](https://www.netlify.com) and sign up (or use GitHub).
2. **Add new site** → **Import an existing project** → **GitHub**.
3. Choose your repo and branch (main).
4. Build command: leave empty. Publish directory: `/` (root).
5. Deploy. You get a URL like `https://random-name.netlify.app`. You can change it in Site settings.

**Option C: Vercel (free)**

1. Go to [vercel.com](https://vercel.com) and sign up with GitHub.
2. **Add New** → **Project** → import your repo.
3. Deploy. You get a URL like `https://your-repo.vercel.app`.

---

**After hosting:** If you use GitHub Pages with a project site (`username.github.io/repo-name`), your links and the gallery’s `Photos/` path will work as long as you don’t use a leading `/` in hrefs (your current relative paths are fine).
