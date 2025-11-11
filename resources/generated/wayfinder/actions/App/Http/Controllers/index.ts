import General from './General'
import Auth from './Auth'
import PostController from './PostController'
import TagController from './TagController'
const Controllers = {
    General: Object.assign(General, General),
Auth: Object.assign(Auth, Auth),
PostController: Object.assign(PostController, PostController),
TagController: Object.assign(TagController, TagController),
}

export default Controllers