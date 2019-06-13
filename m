Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA6544CFB
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 22:07:34 +0200 (CEST)
Received: from [::1] (port=54596 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbW0T-0006kK-3j; Thu, 13 Jun 2019 16:07:33 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:44111)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hbW0O-0006cO-IL
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 16:07:28 -0400
Received: by mail-qk1-f173.google.com with SMTP id p144so191065qke.11
 for <usrp-users@lists.ettus.com>; Thu, 13 Jun 2019 13:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=AosDOFSqkhLpBFyHuCaSQH05jDcJ5t3+CXuuIJd1ndU=;
 b=ZwPPtWALxIlSLRGMPTc+VboABu7l/dkSXIdp/NqEJXUHhknAxaMZZKA/fSLNVkSaAf
 Bv7moFi95+horCocVTCNcRv2oCt14Ee0jgr1eiNwsGHBJ5dRfQwydx9F/DJYJupO1Ltt
 hJL9bcD9gx1eev25EBhq7BU2NJJ+XWYFngYGQe5K/pO3qt5DF3dNwZ7OCIt4R6k3D+fC
 2kW/IbCp8Nswe27bOdrJZKe964TYiaDupXEgifDsL9qKiWg0Pe6XbYVQ8sOiJ3NBmkPB
 98u58w3IoS+Sievkihvh/4BrR30e/JEDfpJo4FHQeoEkjfvx5dKniJjWf7YoAj2rxjSS
 t9zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=AosDOFSqkhLpBFyHuCaSQH05jDcJ5t3+CXuuIJd1ndU=;
 b=NUiTy0Mgw6oCNbzNVGmX2fEtmKrIW1G47GvDIvSVHEv6rEkyGzz8avwgKzIL0ii536
 sx2wuRCrbiovMGygOTYKp6wEb/doZ7lGVyR0wEDDzw6vWz/9IehgXuQe5PIyk7QEXq3B
 NQB2JfT87d8Jt7KedEza6vgqme63lFComyFEJSBL1RMww1I5KFWw5PKBM/BZrmHqUN+9
 wn8gR1CVJY/6Hh44ydqzDht9D55TQMWUHOgCUedv8ccXm2Dv/BSiwEQoFrHqihXyNi54
 pV2Gq3AIxH+CPIec6rw/IdyeAL3YIfxeAk06oYvxghKW3qyEAdHezjNMe44nwm5YXPSe
 5j5Q==
X-Gm-Message-State: APjAAAXo38G3W/76CEMCgBip+p6dksmSK6K/K/GBCUlwMS4n2vlwi8Z5
 oqdzUP+930hwQ7mfeRy2h/f+sye4OJA=
X-Google-Smtp-Source: APXvYqwYf17Bjoox4wZXSgiOoBWiUahl9CjYD+ddeCAkwzMnmtuPfeLATSjBWZI3O1Wg7Nb+Q1rY/A==
X-Received: by 2002:a37:6f81:: with SMTP id
 k123mr37270363qkc.321.1560456407873; 
 Thu, 13 Jun 2019 13:06:47 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id n48sm421424qtc.90.2019.06.13.13.06.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 13:06:47 -0700 (PDT)
Message-ID: <5D02ACD6.1010409@gmail.com>
Date: Thu, 13 Jun 2019 16:06:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Sumit Kumar <cogwsn@gmail.com>
References: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
 <5D02A5F4.5010604@gmail.com>
 <CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com>
In-Reply-To: <CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com>
Subject: Re: [USRP-users] Reg: USRP N200 reset problem
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============6331683412465638171=="
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
--===============6331683412465638171==
Content-Type: multipart/alternative;
 boundary="------------000009000709090209050300"

This is a multi-part message in MIME format.
--------------000009000709090209050300
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2019 03:52 PM, Sumit Kumar wrote:
> Hi Marcus,
>
> I just did the following (nothing else). What shall I do after this ? 
> I do not have the JTAG with me.
>
> _The safe-mode button is a pushbutton switch (S2) located inside the 
> enclosure. To boot into the safe image, hold-down the safe-mode button 
> while power-cycling the device. Continue to hold-down the button until 
> the front-panel LEDs blink and remain solid._
>
> _When in safe-mode, the USRP-N device will always have the IP address 
> 192.168.10.2._
>
> _
> _
>
Once it is in safe-mode, use the EEPROM commands as below:

https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip

To change the stored-in-eeprom IP address to whatever you want (perhaps 
just back to the default 192.168.10.2).  Once that works,
   power-cycle, and ping the device.  It should now respond to the 
desired address.

I suspect that what happened was your friend changed the IP address away 
from the default, so, you use safe-mode to get it into a state
   where you can change the permanent address of the device.


>
>
> On Thu, Jun 13, 2019 at 9:38 PM Marcus D. Leech via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:
>     >
>     > Hi,
>     >
>     > I got Ettus N200 from my colleague. I din't know the ip address
>     so I
>     > did a reset. After the reset, the ip of N200 became 192.168.10.2
>     and I
>     > was able to ping and do all regular stuff with it. But whenever
>     I do a
>     > power cycle of the N200, it is undetectable at 192.168.10.2. Then
>     > again I have to reset it.
>     >
>     > I am not sure what has gone wrong.
>     >
>     > Regards
>     > Sumit
>     >
>     Could you describe the steps you took to reset it?
>
>     IT sounds like you put it in "safe mode", but didn't actually
>     download a
>     working image into it or force an IP address reset to a desired IP
>     address.
>
>     https://kb.ettus.com/N200/N210_Device_Recovery
>
>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
> -- 
> -- 
> Sumit kumar
> Doctoral Student, UPMC
> Eurecom, BIOT
> France
>


--------------000009000709090209050300
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 06/13/2019 03:52 PM, Sumit Kumar
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Marcus, 
        <div><br>
        </div>
        <div>I just did the following (nothing else). <span
            style="color:rgb(0,0,0);font-family:&quot;Lucida Sans
            Unicode&quot;,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px">What shall I do
            after this ? I do not have the JTAG with me. </span></div>
        <div><br>
        </div>
        <div>
          <p style="margin:0.5em
            0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida
            Sans Unicode&quot;,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><u>The safe-mode
              button is a pushbutton switch (S2) located inside the
              enclosure. To boot into the safe image, hold-down the
              safe-mode button while power-cycling the device. Continue
              to hold-down the button until the front-panel LEDs blink
              and remain solid.</u></p>
          <p style="margin:0.5em
            0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida
            Sans Unicode&quot;,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><u>When in
              safe-mode, the USRP-N device will always have the IP
              address 192.168.10.2.</u></p>
          <p style="margin:0.5em
            0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida
            Sans Unicode&quot;,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><u><br>
            </u></p>
        </div>
      </div>
    </blockquote>
    Once it is in safe-mode, use the EEPROM commands as below:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip">https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip</a><br>
    <br>
    To change the stored-in-eeprom IP address to whatever you want
    (perhaps just back to the default 192.168.10.2).  Once that works,<br>
      power-cycle, and ping the device.  It should now respond to the
    desired address.<br>
    <br>
    I suspect that what happened was your friend changed the IP address
    away from the default, so, you use safe-mode to get it into a state<br>
      where you can change the permanent address of the device.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>
          <p style="margin:0.5em
            0px;line-height:inherit;color:rgb(0,0,0);font-family:&quot;Lucida
            Sans Unicode&quot;,&quot;Lucida
            Grande&quot;,sans-serif;font-size:14px"><br>
          </p>
        </div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Thu, Jun 13, 2019 at 9:38
          PM Marcus D. Leech via USRP-users &lt;<a
            moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:<br>
          &gt;<br>
          &gt; Hi,<br>
          &gt;<br>
          &gt; I got Ettus N200 from my colleague. I din't know the ip
          address so I <br>
          &gt; did a reset. After the reset, the ip of N200 became
          192.168.10.2 and I <br>
          &gt; was able to ping and do all regular stuff with it. But
          whenever I do a <br>
          &gt; power cycle of the N200, it is undetectable at
          192.168.10.2. Then <br>
          &gt; again I have to reset it.<br>
          &gt;<br>
          &gt; I am not sure what has gone wrong.<br>
          &gt;<br>
          &gt; Regards<br>
          &gt; Sumit<br>
          &gt;<br>
          Could you describe the steps you took to reset it?<br>
          <br>
          IT sounds like you put it in "safe mode", but didn't actually
          download a <br>
          working image into it or force an IP address reset to a
          desired IP address.<br>
          <br>
          <a moz-do-not-send="true"
            href="https://kb.ettus.com/N200/N210_Device_Recovery"
            rel="noreferrer" target="_blank">https://kb.ettus.com/N200/N210_Device_Recovery</a><br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">
          <div><span style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
              style="color:rgb(136,136,136);font-size:12.8px">
            <div style="color:rgb(136,136,136);font-size:12.8px">Sumit
              kumar<br>
              Doctoral Student, UPMC</div>
            <div style="color:rgb(136,136,136);font-size:12.8px">Eurecom,
              BIOT</div>
            <div style="color:rgb(136,136,136);font-size:12.8px">France</div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000009000709090209050300--


--===============6331683412465638171==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6331683412465638171==--

