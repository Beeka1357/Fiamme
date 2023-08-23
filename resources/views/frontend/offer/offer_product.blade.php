@php
                            $offers = App\Models\Offer::orderBy('offers_name','ASC')->limit(6)->get();
                            
                            
                            @endphp


<section class="popular-categories section-padding">
    <div class="container wow animate__animated animate__fadeIn">
        <div class="section-title">
            <div class="title">
                <h3>Special Offers</h3>
               
            </div>
            <div class="slider-arrow slider-arrow-2 flex-right carausel-10-columns-arrow" id="carausel-10-columns-arrows"></div>
        </div>
        <div class="carausel-10-columns-cover position-relative">
            <div class="carausel-10-columns" >

                @foreach($offers as $offer)
                <div class="card-3  wow animate__animated animate__fadeInUp" data-wow-delay=".1s">
                    <figure class="img-hover-scale overflow-hidden">
                    <a href="{{ url('product/offer/'.$offer->id.'/'.$offer->offers_slug) }}"><img src="{{ asset($offer->offers_image ) }}" alt="{{$offer->offers_name}}" /></a>
                    </figure>
                    <span class="text">{{$offer->offers_name}}</span>
                    <!-- <h6><a href="{{ url('product/offer/'.$offer->id.'/'.$offer->offer_slug) }}">{{ $offer->offer_name }}</a></h6> -->

                  
            
                                    
                                    </div>
                                    @endforeach 
            
                                </div>
                            </div>
                        </div>