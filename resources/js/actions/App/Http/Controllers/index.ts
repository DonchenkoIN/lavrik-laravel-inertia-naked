import General from './General'
import Auth from './Auth'
import PostController from './PostController'
const Controllers = {
    General: Object.assign(General, General),
Auth: Object.assign(Auth, Auth),
PostController: Object.assign(PostController, PostController),
}

export default Controllers