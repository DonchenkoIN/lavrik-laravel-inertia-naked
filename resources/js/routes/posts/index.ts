import { queryParams, type RouteQueryOptions, type RouteDefinition, applyUrlDefaults } from './../../wayfinder'
/**
* @see \App\Http\Controllers\PostController::index
 * @see app/Http/Controllers/PostController.php:19
 * @route '/office/posts'
 */
export const index = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: index.url(options),
    method: 'get',
})

index.definition = {
    methods: ["get","head"],
    url: '/office/posts',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\PostController::index
 * @see app/Http/Controllers/PostController.php:19
 * @route '/office/posts'
 */
index.url = (options?: RouteQueryOptions) => {
    return index.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::index
 * @see app/Http/Controllers/PostController.php:19
 * @route '/office/posts'
 */
index.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: index.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\PostController::index
 * @see app/Http/Controllers/PostController.php:19
 * @route '/office/posts'
 */
index.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: index.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\PostController::create
 * @see app/Http/Controllers/PostController.php:30
 * @route '/office/posts/create'
 */
export const create = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})

create.definition = {
    methods: ["get","head"],
    url: '/office/posts/create',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\PostController::create
 * @see app/Http/Controllers/PostController.php:30
 * @route '/office/posts/create'
 */
create.url = (options?: RouteQueryOptions) => {
    return create.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::create
 * @see app/Http/Controllers/PostController.php:30
 * @route '/office/posts/create'
 */
create.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\PostController::create
 * @see app/Http/Controllers/PostController.php:30
 * @route '/office/posts/create'
 */
create.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: create.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\PostController::store
 * @see app/Http/Controllers/PostController.php:40
 * @route '/office/posts'
 */
export const store = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

store.definition = {
    methods: ["post"],
    url: '/office/posts',
} satisfies RouteDefinition<["post"]>

/**
* @see \App\Http\Controllers\PostController::store
 * @see app/Http/Controllers/PostController.php:40
 * @route '/office/posts'
 */
store.url = (options?: RouteQueryOptions) => {
    return store.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::store
 * @see app/Http/Controllers/PostController.php:40
 * @route '/office/posts'
 */
store.post = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

/**
* @see \App\Http\Controllers\PostController::show
 * @see app/Http/Controllers/PostController.php:49
 * @route '/office/posts/{post}'
 */
export const show = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: show.url(args, options),
    method: 'get',
})

show.definition = {
    methods: ["get","head"],
    url: '/office/posts/{post}',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\PostController::show
 * @see app/Http/Controllers/PostController.php:49
 * @route '/office/posts/{post}'
 */
show.url = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { post: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { post: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    post: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        post: typeof args.post === 'object'
                ? args.post.id
                : args.post,
                }

    return show.definition.url
            .replace('{post}', parsedArgs.post.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::show
 * @see app/Http/Controllers/PostController.php:49
 * @route '/office/posts/{post}'
 */
show.get = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: show.url(args, options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\PostController::show
 * @see app/Http/Controllers/PostController.php:49
 * @route '/office/posts/{post}'
 */
show.head = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: show.url(args, options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\PostController::edit
 * @see app/Http/Controllers/PostController.php:58
 * @route '/office/posts/{post}/edit'
 */
export const edit = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: edit.url(args, options),
    method: 'get',
})

edit.definition = {
    methods: ["get","head"],
    url: '/office/posts/{post}/edit',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\PostController::edit
 * @see app/Http/Controllers/PostController.php:58
 * @route '/office/posts/{post}/edit'
 */
edit.url = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { post: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { post: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    post: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        post: typeof args.post === 'object'
                ? args.post.id
                : args.post,
                }

    return edit.definition.url
            .replace('{post}', parsedArgs.post.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::edit
 * @see app/Http/Controllers/PostController.php:58
 * @route '/office/posts/{post}/edit'
 */
edit.get = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: edit.url(args, options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\PostController::edit
 * @see app/Http/Controllers/PostController.php:58
 * @route '/office/posts/{post}/edit'
 */
edit.head = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: edit.url(args, options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\PostController::update
 * @see app/Http/Controllers/PostController.php:67
 * @route '/office/posts/{post}'
 */
export const update = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'put'> => ({
    url: update.url(args, options),
    method: 'put',
})

update.definition = {
    methods: ["put","patch"],
    url: '/office/posts/{post}',
} satisfies RouteDefinition<["put","patch"]>

/**
* @see \App\Http\Controllers\PostController::update
 * @see app/Http/Controllers/PostController.php:67
 * @route '/office/posts/{post}'
 */
update.url = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { post: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { post: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    post: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        post: typeof args.post === 'object'
                ? args.post.id
                : args.post,
                }

    return update.definition.url
            .replace('{post}', parsedArgs.post.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::update
 * @see app/Http/Controllers/PostController.php:67
 * @route '/office/posts/{post}'
 */
update.put = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'put'> => ({
    url: update.url(args, options),
    method: 'put',
})
/**
* @see \App\Http\Controllers\PostController::update
 * @see app/Http/Controllers/PostController.php:67
 * @route '/office/posts/{post}'
 */
update.patch = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'patch'> => ({
    url: update.url(args, options),
    method: 'patch',
})

/**
* @see \App\Http\Controllers\PostController::destroy
 * @see app/Http/Controllers/PostController.php:76
 * @route '/office/posts/{post}'
 */
export const destroy = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(args, options),
    method: 'delete',
})

destroy.definition = {
    methods: ["delete"],
    url: '/office/posts/{post}',
} satisfies RouteDefinition<["delete"]>

/**
* @see \App\Http\Controllers\PostController::destroy
 * @see app/Http/Controllers/PostController.php:76
 * @route '/office/posts/{post}'
 */
destroy.url = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { post: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { post: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    post: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        post: typeof args.post === 'object'
                ? args.post.id
                : args.post,
                }

    return destroy.definition.url
            .replace('{post}', parsedArgs.post.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\PostController::destroy
 * @see app/Http/Controllers/PostController.php:76
 * @route '/office/posts/{post}'
 */
destroy.delete = (args: { post: number | { id: number } } | [post: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(args, options),
    method: 'delete',
})
const posts = {
    index: Object.assign(index, index),
create: Object.assign(create, create),
store: Object.assign(store, store),
show: Object.assign(show, show),
edit: Object.assign(edit, edit),
update: Object.assign(update, update),
destroy: Object.assign(destroy, destroy),
}

export default posts