import { queryParams, type RouteQueryOptions, type RouteDefinition } from './../../wayfinder'
/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
export const create = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})

create.definition = {
    methods: ["get","head"],
    url: '/sessions/create',
} satisfies RouteDefinition<["get","head"]>

/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.url = (options?: RouteQueryOptions) => {
    return create.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.get = (options?: RouteQueryOptions): RouteDefinition<'get'> => ({
    url: create.url(options),
    method: 'get',
})
/**
* @see \App\Http\Controllers\Auth\Session::create
 * @see app/Http/Controllers/Auth/Session.php:15
 * @route '/sessions/create'
 */
create.head = (options?: RouteQueryOptions): RouteDefinition<'head'> => ({
    url: create.url(options),
    method: 'head',
})

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
export const store = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

store.definition = {
    methods: ["post"],
    url: '/sessions',
} satisfies RouteDefinition<["post"]>

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
store.url = (options?: RouteQueryOptions) => {
    return store.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::store
 * @see app/Http/Controllers/Auth/Session.php:20
 * @route '/sessions'
 */
store.post = (options?: RouteQueryOptions): RouteDefinition<'post'> => ({
    url: store.url(options),
    method: 'post',
})

/**
* @see \App\Http\Controllers\Auth\Session::destroy
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
export const destroy = (options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(options),
    method: 'delete',
})

destroy.definition = {
    methods: ["delete"],
    url: '/office/sessions',
} satisfies RouteDefinition<["delete"]>

/**
* @see \App\Http\Controllers\Auth\Session::destroy
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
destroy.url = (options?: RouteQueryOptions) => {
    return destroy.definition.url + queryParams(options)
}

/**
* @see \App\Http\Controllers\Auth\Session::destroy
 * @see app/Http/Controllers/Auth/Session.php:32
 * @route '/office/sessions'
 */
destroy.delete = (options?: RouteQueryOptions): RouteDefinition<'delete'> => ({
    url: destroy.url(options),
    method: 'delete',
})
const sessions = {
    create: Object.assign(create, create),
store: Object.assign(store, store),
destroy: Object.assign(destroy, destroy),
}

export default sessions