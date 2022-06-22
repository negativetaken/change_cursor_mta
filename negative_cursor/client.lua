-- negative

sx , sy = guiGetScreenSize()
imgW , imgH = 12 , 12
setCursorAlpha( 0 )

func.drawCursor = function( )

    if isCursorShowing( ) then

        local cX , cY = getCursorPosition( )
        local w , h = imgW , imgH

        local x , y = cX * sx , cY * sy

        dxDrawImage( x , y , w , h , "assets/pointer.png" , 0 , 0 , 0 , tocolor( 255 , 255 , 255 ) , true )

    end

end
addEventHandler( 'onClientRender' , root , func.drawCursor )