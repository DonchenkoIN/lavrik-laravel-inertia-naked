import { queryParams, type RouteQueryOptions, type RouteDefinition, applyUrlDefaults } from './../../../../wayfinder'
/**
* @see \App\Http\Controllers\TagController::index
 * @see app/Http/Controllers/TagController.php:17
 * @route '/office/tags'
 */
export const index = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: index.url(options),
    method: 'get',
})

index.definition = {
    methods: ["get","head"],
    url: '/office/tags',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\TagController::index
 * @see app/Http/Controllers/TagController.php:17
 * @route '/office/tags'
 */
index.url = (options?: RouteQueryOptions) => {
    return index.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::index
 * @see app/Http/Controllers/TagController.php:17
 * @route '/office/tags'
 */
index.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: index.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\TagController::index
 * @see app/Http/Controllers/TagController.php:17
 * @route '/office/tags'
 */
index.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: index.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\TagController::create
 * @see app/Http/Controllers/TagController.php:27
 * @route '/office/tags/create'
 */
export const create = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})

create.definition = {
    methods: ["get","head"],
    url: '/office/tags/create',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\TagController::create
 * @see app/Http/Controllers/TagController.php:27
 * @route '/office/tags/create'
 */
create.url = (options?: RouteQueryOptions) => {
    return create.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::create
 * @see app/Http/Controllers/TagController.php:27
 * @route '/office/tags/create'
 */
create.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\TagController::create
 * @see app/Http/Controllers/TagController.php:27
 * @route '/office/tags/create'
 */
create.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: create.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\TagController::store
 * @see app/Http/Controllers/TagController.php:35
 * @route '/office/tags'
 */
export const store = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

store.definition = {
    methods: ["post"],
    url: '/office/tags',
} satisfies RouteDefinition<["post"]>

/**
* @see \App\Http\Controllers\TagController::store
 * @see app/Http/Controllers/TagController.php:35
 * @route '/office/tags'
 */
store.url = (options?: RouteQueryOptions) => {
    return store.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::store
 * @see app/Http/Controllers/TagController.php:35
 * @route '/office/tags'
 */
store.post = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

/**
* @see \App\Http\Controllers\TagController::show
 * @see app/Http/Controllers/TagController.php:43
 * @route '/office/tags/{tag}'
 */
export const show = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: show.url(args, options),
    method: 'get',
})

show.definition = {
    methods: ["get","head"],
    url: '/office/tags/{tag}',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\TagController::show
 * @see app/Http/Controllers/TagController.php:43
 * @route '/office/tags/{tag}'
 */
show.url = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { tag: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { tag: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    tag: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        tag: typeof args.tag === 'object'
                ? args.tag.id
                : args.tag,
                }

    return show.definition.url
            .replace('{tag}', parsedArgs.tag.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::show
 * @see app/Http/Controllers/TagController.php:43
 * @route '/office/tags/{tag}'
 */
show.get = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: show.url(args, options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\TagController::show
 * @see app/Http/Controllers/TagController.php:43
 * @route '/office/tags/{tag}'
 */
show.head = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: show.url(args, options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\TagController::edit
 * @see app/Http/Controllers/TagController.php:51
 * @route '/office/tags/{tag}/edit'
 */
export const edit = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: edit.url(args, options),
    method: 'get',
})

edit.definition = {
    methods: ["get","head"],
    url: '/office/tags/{tag}/edit',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\TagController::edit
 * @see app/Http/Controllers/TagController.php:51
 * @route '/office/tags/{tag}/edit'
 */
edit.url = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { tag: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { tag: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    tag: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        tag: typeof args.tag === 'object'
                ? args.tag.id
                : args.tag,
                }

    return edit.definition.url
            .replace('{tag}', parsedArgs.tag.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::edit
 * @see app/Http/Controllers/TagController.php:51
 * @route '/office/tags/{tag}/edit'
 */
edit.get = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: edit.url(args, options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\TagController::edit
 * @see app/Http/Controllers/TagController.php:51
 * @route '/office/tags/{tag}/edit'
 */
edit.head = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: edit.url(args, options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\TagController::update
 * @see app/Http/Controllers/TagController.php:59
 * @route '/office/tags/{tag}'
 */
export const update = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'put'> => ({
    url: update.url(args, options),
    method: 'put',
})

update.definition = {
    methods: ["put","patch"],
    url: '/office/tags/{tag}',
} satisfies RouteDefinition<["put","patch"]>

/**
* @see \App\Http\Controllers\TagController::update
 * @see app/Http/Controllers/TagController.php:59
 * @route '/office/tags/{tag}'
 */
update.url = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { tag: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { tag: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    tag: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        tag: typeof args.tag === 'object'
                ? args.tag.id
                : args.tag,
                }

    return update.definition.url
            .replace('{tag}', parsedArgs.tag.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::update
 * @see app/Http/Controllers/TagController.php:59
 * @route '/office/tags/{tag}'
 */
update.put = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'put'> => ({
    url: update.url(args, options),
    method: 'put',
})
/**
* @see \App\Http\Controllers\TagController::update
 * @see app/Http/Controllers/TagController.php:59
 * @route '/office/tags/{tag}'
 */
update.patch = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'patch'> => ({
    url: update.url(args, options),
    method: 'patch',
})

/**
* @see \App\Http\Controllers\TagController::destroy
 * @see app/Http/Controllers/TagController.php:67
 * @route '/office/tags/{tag}'
 */
export const destroy = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(args, options),
    method: 'delete',
})

destroy.definition = {
    methods: ["delete"],
    url: '/office/tags/{tag}',
} satisfies RouteDefinition<["delete"]>

/**
* @see \App\Http\Controllers\TagController::destroy
 * @see app/Http/Controllers/TagController.php:67
 * @route '/office/tags/{tag}'
 */
destroy.url = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions) => {
    if (typeof args === 'string' || typeof args === 'number') {
        args = { tag: args }
    }

            if (typeof args === 'object' && !Array.isArray(args) && 'id' in args) {
            args = { tag: args.id }
        }
    
    if (Array.isArray(args)) {
        args = {
                    tag: args[0],
                }
    }

    args = applyUrlDefaults(args)

    const parsedArgs = {
                        tag: typeof args.tag === 'object'
                ? args.tag.id
                : args.tag,
                }

    return destroy.definition.url
            .replace('{tag}', parsedArgs.tag.toString())
            .replace(/\/+$/, '') + queryParams(options)
}

/**
* @see \App\Http\Controllers\TagController::destroy
 * @see app/Http/Controllers/TagController.php:67
 * @route '/office/tags/{tag}'
 */
destroy.delete = (args: { tag: number | { id: number } } | [tag: number | { id: number } ] | number | { id: number }, options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(args, options),
    method: 'delete',
})
const TagController = { index, create, store, show, edit, update, destroy }

export default TagController