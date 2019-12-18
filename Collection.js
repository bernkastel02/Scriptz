class Collection extends Map {
    constructor(baseObject) {
        super();
        
        this.baseObject = baseObject;
    }
    
    find(func) {
        for (const item of this.values()) {
            if (func(item)) {
                return item;
            }
        }
        return undefined;
    }

    random() {
        if (!this.size) {
            return undefined;
        }
        const index = Math.floor(Math.random() * this.size);
        const iterate = this.values();
        let res;
        for (let i = 0; i <= index; i++) {
            res = iterate.next().value;
        }
        return res;
    }

    filter(func) {
        const arr = [];
        for (const item of this.values()) {
            if (func(item)) {
                arr.push(item);
            }
        }
        return arr;
    }

    map(func) {
        const arr = [];
        for (const item of this.values()) {
            arr.push(func(item));
        }
        return arr;
    }

}

module.exports = Collection;
