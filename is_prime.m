function result = is_prime( n )
    count = count_factors( n );
    if count ==2
        result = 1;
    else 
        result = 0;
    end
end

