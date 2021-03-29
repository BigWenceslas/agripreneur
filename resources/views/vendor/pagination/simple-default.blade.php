@if ($paginator->hasPages())
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            @if ($paginator->onFirstPage())
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Precedent">
                        <span aria-hidden="true"><i class="fas fa-caret-left"></i></span>
                    </a>
                </li>
                @else
                <li class="page-item">
                    <a class="page-link" href="{{ $paginator->previousPageUrl() }}" aria-label="Precedent">
                        <span aria-hidden="true"><i class="fas fa-caret-left"></i></span>
                    </a>
                </li>
            @endif
            @if ($paginator->lastPage() > 2)
                @for ($i = 2; $i < $paginator->lastPage(); $i++)
                    <li class="page-item">
                        <a class="page-link @if($i==$paginator->currentPage())active_pagination @endif" href="{{'http://localhost:8000/categorie/technologie?page='.$i}}">{{$i}}</a>
                    </li>
                @endfor
            @endif


            @if ($paginator->hasMorePages())
            <li class="page-item">
                <a class="page-link" href="{{ $paginator->nextPageUrl() }}" aria-label="Suivant">
                    <span aria-hidden="true"><i class="fas fa-caret-right"></i></span>
                </a>
            </li>
            @else
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Suivant">
                    <span aria-hidden="true"><i class="fas fa-caret-right"></i></span>
                </a>
            </li>
            @endif
        </ul>
    </nav>
@endif
