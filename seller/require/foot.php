</div>
</section>
<?php if ((plan($con) == 0) || (plan($con) == 1)){ } ?>
<?php if ((plan($con) == 2) || (plan($con) == 3) || (plan($con) == 4) || (plan($con) == 5) || (plan($con) == 6) || (plan($con) == 7)){ ?>
<!--Start of Telegram Script-->
<script> 
    window.intergramId = "1083541483";
    window.intergramCustomizations = {
        titleClosed: 'Chat Support',
        titleOpen: 'Live Chat...',
		introMessage: 'Anything I can help?',
        autoResponse: 'We will answer your message, please wait.',
        autoNoResponse: 'Sorry, ' +
                        'The Customer Representative is offline. please chat later.',
        mainColor: "#1a73e8", // Can be any css supported color 'red', 'rgb(255,87,34)', etc
        alwaysUseFloatingButton: true // Use the mobile floating button also on large screens
    };
</script>
<script id="intergram" type="text/javascript" src="https://www.intergram.xyz/js/widget.js"></script>
<!--End of Telegram Script-->
<?php } ?>
<script src="assets/js/script.js"></script>
</body>

</html>