Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C521B315994
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 23:41:19 +0100 (CET)
Received: from [::1] (port=39296 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9bh6-0002Er-3M; Tue, 09 Feb 2021 17:41:16 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:33587)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1l9bh2-00026f-17
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 17:41:12 -0500
Received: by mail-qk1-f180.google.com with SMTP id b14so6247494qkk.0
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 14:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=CGhnDqTxlVb44Ev2dolmFrVXF1Y93Aht45ccZLvAMQA=;
 b=U02sITnCf/1rf0T+K8CbdPw6hRXxi092ngOdeCUVQC+Z8qbcXgNkDjAGHIvNUmsGD6
 OAC1QOR4yWxK4gNPXxTfiBqEueGAmuIraTbAnZhVq8OFJYGtGPDp1vIskEsdW+QVBTwq
 jROs9DyMjAv/Cfxg4LEXP2omeZ4aY/uPcGhe98TvZ+eIcheBnjLfnu2PcXtsVGJOUmbM
 0HtiCshr5pBB/TZaxqfslLrp7K88Gw7cnp0Ek2/bbxEt8QXouNpaO+J9VMRiQbf8YDkX
 RRWeClvKyfmlz/cQ12qj//HDTqsPxYFNnB/L5bDA+CRTYTY3iBs/fTzbvhDmziAWsw01
 /W0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=CGhnDqTxlVb44Ev2dolmFrVXF1Y93Aht45ccZLvAMQA=;
 b=C0SDEPKbe3lCxIK3RX0qpGzqrVaj+XCzqzlyeozcbjIZuIenqw4TXUeBoJqLAwZMD8
 EW6q0T33XHoHK56oeGV3tfk7EUuRyt1kV1jxK+PNiTKUiidQDsw5fpEVWaiGBkZda02S
 N8/TQDg71xjaAfIYcttRSU9V2TKp0t6MziWnav3/BgfFagi9BdoJoEq4gsSSm3HKghES
 EIxEZzo8CYj95qDk9n9ymg7vLaAw3b8XWYrWXs13XLb9Mc5HKzYz0zA+bg5ZqcA20Jes
 uiFUanPFRy533e9u8owFEkslFrPZvzKpxWKflA/bqjrSJm8GyStQeURXmUKoQ90JAPKc
 MAwQ==
X-Gm-Message-State: AOAM533aMDLidv3v4kFURAwoRAMaIEw8/RyN0uU1S1ZHPcuqt22wOPpy
 ZyeSw65i+j7Sg44ilJBCA9ldSGrj0IE=
X-Google-Smtp-Source: ABdhPJwOaNAN4PSui30eZSuqUylUvFjBbQY+Iob54dYBvH0FqZlOPdxNKxWcZOZwzVI+B0GAGEAS1A==
X-Received: by 2002:a37:48cc:: with SMTP id v195mr509789qka.14.1612910431288; 
 Tue, 09 Feb 2021 14:40:31 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id z139sm137906qkb.0.2021.02.09.14.40.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 14:40:31 -0800 (PST)
Message-ID: <60230F5E.40905@gmail.com>
Date: Tue, 09 Feb 2021 17:40:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: dtrask1@tampabay.rr.com
CC: "'usrp-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
References: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
In-Reply-To: <c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail>
Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============4323804593633694483=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============4323804593633694483==
Content-Type: multipart/alternative;
 boundary="------------090907030300060807050101"

This is a multi-part message in MIME format.
--------------090907030300060807050101
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2021 05:04 PM, dtrask1@tampabay.rr.com wrote:
> Thanks, Marcus.
>
> That was actually what I attempted first. As described in the man page 
> (https://www.freedesktop.org/software/systemd/man/systemd.network.html) I 
> created eth0.network under /etc/systemd/network/, with these contents:
>
> [Match]
> Name=eth0
>
> [Network]
> Address=192.168.200.2/24
>
> The system seemed to ignore this configuration, however.
>
>
>
OK, what does:

systemctl |grep -i net

Yield?

What does:

ip link

Return?



> -----------------------------------------
>
> From: "Marcus D. Leech via USRP-users"
> To: usrp-users@lists.ettus.com
> Cc:
> Sent: Tuesday February 9 2021 4:42:34PM
> Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure Static IP
>
> On 02/09/2021 04:35 PM, Dennis Trask via USRP-users wrote:
>
>     I have re-imaged the SD card for my E310 with the v4.0.0.0 image.
>     I cannot figure out how to set a static IP address on eth0 at
>     boot-up. I created an /etc/network/interfaces file that looks like
>     this:
>
>     auto eth0
>     iface eth0 inet static
>     address 192.168.200.2
>     netmask 255.255.255.0
>
>     I can run the command "ifup eth0" and bring up the interface with
>     the desired configuration, but it does not initialize when I reboot.
>
>     The SD image I am using was obtained with the command:
>     uhd_images_downloader -t e310 -t sg3
>
>     I built the uhd_images_downloder from source, and it's version
>     is 4.0.0.HEAD-0-g90ce6062.
>
>     Dennis
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     "mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com
>     "http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">
>     target=
>     "_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> It almost certainly is running systemd/networkd
>
> So look under /etc/systemd/networkd
>
> In Linux, there have historically been many different ways to 
> configure network devices, and even under systemd, there are a couple of
>   different schemes "out there".  I believe that in a UHD 4 system 
> image on E310, it is based on Networkd.
>
>


--------------090907030300060807050101
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/09/2021 05:04 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:dtrask1@tampabay.rr.com">dtrask1@tampabay.rr.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail"
      type="cite">Thanks, Marcus.
      <div><br>
      </div>
      <div>That was actually what I attempted first. As described in the
        man page
        (<a class="moz-txt-link-freetext" href="https://www.freedesktop.org/software/systemd/man/systemd.network.html">https://www.freedesktop.org/software/systemd/man/systemd.network.html</a>)
        I created eth0.network under /etc/systemd/network/, with these
        contents:</div>
      <div><br>
      </div>
      <div>
        <div>[Match]</div>
        <div>Name=eth0</div>
        <div><br>
        </div>
        <div>[Network]</div>
        <div>Address=192.168.200.2/24</div>
        <div><br>
        </div>
        <div>The system seemed to ignore this configuration, however.</div>
        <div><br>
        </div>
        <div><br>
        </div>
        <br>
      </div>
    </blockquote>
    OK, what does:<br>
    <br>
    systemctl |grep -i net<br>
    <br>
    Yield?<br>
    <br>
    What does:<br>
    <br>
    ip link<br>
    <br>
    Return?<br>
    <br>
    <br>
    <br>
    <blockquote
      cite="mid:c8adce8fc66a02147695ffdfc9ee380542a5bca1@webmail"
      type="cite">
      <div>
        <p>-----------------------------------------</p>
        From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com><br>
          To: <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
          Cc: <br>
          Sent: Tuesday February 9 2021 4:42:34PM<br>
          Subject: Re: [USRP-users] E310 with v4.0.0.0 Image: Configure
          Static IP<br>
          <br>
          <div class="moz-cite-prefix">On 02/09/2021 04:35 PM, Dennis
            Trask
            via USRP-users wrote:<br>
          </div>
          <blockquote>
            I have re-imaged the SD card for my E310 with the v4.0.0.0
            image. I
            cannot figure out how to set a static IP address on eth0 at
            boot-up. I created an /etc/network/interfaces file that
            looks like
            this:
            <div><br>
            </div>
            <div>
              <div>auto eth0</div>
              <div>iface eth0 inet static</div>
              <div>address 192.168.200.2</div>
              <div>netmask 255.255.255.0</div>
            </div>
            <div><br>
            </div>
            <div>I can run the command "ifup eth0" and bring up the
              interface
              with the desired configuration, but it does not initialize
              when I
              reboot.</div>
            <div><br>
            </div>
            <div>The SD image I am using was obtained with the command:
              uhd_images_downloader -t e310 -t sg3</div>
            <div><br>
            </div>
            <div>I built the uhd_images_downloder from source, and it's
              version
              is 4.0.0.HEAD-0-g90ce6062.</div>
            <div><br>
            </div>
            <div>Dennis</div>
            <div><br>
            </div>
            <br>
            <br>
            _______________________________________________<br>
            USRP-users mailing list<br>
<a class="moz-txt-link-rfc2396E" href="mailto:USRP-users@lists.ettus.com">"mailto:USRP-users@lists.ettus.com"</a>&gt;<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
<a class="moz-txt-link-rfc2396E" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"</a>&gt;
            target=<br>
"_blank"&gt;<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
          </blockquote>
          It almost certainly is running systemd/networkd<br>
          <br>
          So look under /etc/systemd/networkd<br>
          <br>
          In Linux, there have historically been many different ways to
          configure network devices, and even under systemd, there are a
          couple of<br>
            different schemes "out there".  I believe that in a UHD
          4 system image on E310, it is based on Networkd.<br>
          <br>
          <br>
        </usrp-users@lists.ettus.com></div>
    </blockquote>
    <br>
  </body>
</html>

--------------090907030300060807050101--


--===============4323804593633694483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4323804593633694483==--

