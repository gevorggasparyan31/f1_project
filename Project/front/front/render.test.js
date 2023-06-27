const renderModal = require('./render');

let obj = {
    "login": "CarGuyArm",
    "id": 43496386,
    "node_id": "MDQ6VXNlcjQzNDk2Mzg2",
    "avatar_url": "https://avatars.githubusercontent.com/u/43496386?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/CarGuyArm",
    "html_url": "https://github.com/CarGuyArm",
    "followers_url": "https://api.github.com/users/CarGuyArm/followers",
    "following_url": "https://api.github.com/users/CarGuyArm/following{/other_user}",
    "gists_url": "https://api.github.com/users/CarGuyArm/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/CarGuyArm/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/CarGuyArm/subscriptions",
    "organizations_url": "https://api.github.com/users/CarGuyArm/orgs",
    "repos_url": "https://api.github.com/users/CarGuyArm/repos",
    "events_url": "https://api.github.com/users/CarGuyArm/events{/privacy}",
    "received_events_url": "https://api.github.com/users/CarGuyArm/received_events",
    "type": "User",
    "site_admin": false,
    "name": "gev.org",
    "company": null,
    "blog": "",
    "location": "Yerevan,Armenia",
    "email": null,
    "hireable": null,
    "bio": "NPUA Information Systems Student",
    "twitter_username": null,
    "public_repos": 13,
    "public_gists": 0,
    "followers": 0,
    "following": 3,
    "created_at": "2018-09-22T12:50:46Z",
    "updated_at": "2022-08-09T13:04:01Z"
  }

let obj1 = {
        "login": "mojombo",
        "id": 1,
        "node_id": "MDQ6VXNlcjE=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/mojombo",
        "html_url": "https://github.com/mojombo",
        "followers_url": "https://api.github.com/users/mojombo/followers",
        "following_url": "https://api.github.com/users/mojombo/following{/other_user}",
        "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
        "organizations_url": "https://api.github.com/users/mojombo/orgs",
        "repos_url": "https://api.github.com/users/mojombo/repos",
        "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
        "received_events_url": "https://api.github.com/users/mojombo/received_events",
        "type": "User",
        "site_admin": false
    }

let obj2 = {
    "login": "defunkt",
    "id": 2,
    "node_id": "MDQ6VXNlcjI=",
    "avatar_url": "https://avatars.githubusercontent.com/u/2?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/defunkt",
    "html_url": "https://github.com/defunkt",
    "followers_url": "https://api.github.com/users/defunkt/followers",
    "following_url": "https://api.github.com/users/defunkt/following{/other_user}",
    "gists_url": "https://api.github.com/users/defunkt/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/defunkt/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/defunkt/subscriptions",
    "organizations_url": "https://api.github.com/users/defunkt/orgs",
    "repos_url": "https://api.github.com/users/defunkt/repos",
    "events_url": "https://api.github.com/users/defunkt/events{/privacy}",
    "received_events_url": "https://api.github.com/users/defunkt/received_events",
    "type": "User",
    "site_admin": false
    }

test('renders right modal',()=> {
    expect(renderModal(obj).toBe(`
<div class = "fade" id = "fade">
    <div class = "modal" id = "modal">
    <p class = "close" onclick = "closeModal()"> X </p>
    <img src="https://avatars.githubusercontent.com/u/43496386?v=4" class="userModalImg"/>
        <div class = "modalHeader">
            <div class = "info"> 
                <div class = "userModalName">"gev.org"</div>
                <div class = "userLogin"> "CarGuyArm"</div>

                <div class = "descrip">
                    <a href = "https://github.com/CarGuyArm">URL To Page</a><
                    <span><b>Public Repositories:</b> 13</span>
                </div>
            </div>
        </div>
    </div>
</div> `))
});

test('renders right modal for user mojombo',()=> {
    expect(renderModal(obj1).toBe(`
<div class = "fade" id = "fade">
    <div class = "modal" id = "modal">
    <p class = "close" onclick = "closeModal()"> X </p>
    <img src="https://avatars.githubusercontent.com/u/1?v=4" class="userModalImg"/>
        <div class = "modalHeader">
            <div class = "info"> 
                <div class = "userModalName">"Michael"</div>
                <div class = "userLogin"> "mojombo"</div>

                <div class = "descrip">
                    <a href = "https://github.com/mojombo">URL To Page</a><
                    <span><b>Public Repositories:</b> 2</span>
                </div>
            </div>
        </div>
    </div>
</div> `))
});

test('renders right modal for user defunkt',()=> {
    expect(renderModal(obj1).toBe(`
<div class = "fade" id = "fade">
    <div class = "modal" id = "modal">
    <p class = "close" onclick = "closeModal()"> X </p>
    <img src="https://avatars.githubusercontent.com/u/2?v=4" class="userModalImg"/>
        <div class = "modalHeader">
            <div class = "info"> 
                <div class = "userModalName">"Chris Wanstrath"</div>
                <div class = "userLogin"> "defunkt"</div>

                <div class = "descrip">
                    <a href = "https://github.com/defunkt">URL To Page</a><
                    <span><b>Public Repositories:</b> 50</span>
                </div>
            </div>
        </div>
    </div>
</div> `))
});