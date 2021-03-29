<div class="follow_box widget mb30 mt-md-60">
    <h2 class="widget-title">Nous suivre sur les reseaux</h2>
    <div class="social_shares">
        <a class="single_social social_facebook" target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->facebook}}@endif"><span class="follow_icon"><i class="fab fa-facebook-f"></i></span>
    <span class="icon_text">Facebook</span>
        </a>
        <a class="single_social social_twitter" target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->twitter}}@endif"><span class="follow_icon"><i class="fab fa-twitter"></i></span>
            <span class="icon_text">Twitter</span>
        </a>
        <a class="single_social social_youtube" target="_blank" href="@if($reseaux_sociaux){{$reseaux_sociaux->youtube}}@endif"><span class="follow_icon"><i class="fab fa-youtube"></i></span>
            <span class="icon_text">Youtube</span>
        </a>
    </div>
</div>