Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 739DB28387F
	for <lists+usrp-users@lfdr.de>; Mon,  5 Oct 2020 16:48:36 +0200 (CEST)
Received: from [::1] (port=40698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kPRn1-0008Uz-1p; Mon, 05 Oct 2020 10:48:35 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:37466)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kPRmx-0008Oe-9z
 for usrp-users@lists.ettus.com; Mon, 05 Oct 2020 10:48:31 -0400
Received: by mail-ej1-f44.google.com with SMTP id e22so5525237ejr.4
 for <usrp-users@lists.ettus.com>; Mon, 05 Oct 2020 07:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=clYoNNIzaQvTjHnfov5Lh8BmWJlpr+neSA6W96lZcgI=;
 b=fgh2FzpfKSY3zEarEzFN4Yn4guG5/LUZb9RoKmPyHEwiAstruNzD4FZLGvGlDZV3Kl
 xGpYx4V3b4QIxRg3sJ2lGu59AGcPEYLIlOA5reMkylPsLR/fxGrcQ7NAUMEtsUS4MlWp
 W08Pd2/Qrc31NrtYjsectmZQeNcsD+FF2RAPy4UttxYEQzK6mmAm200ns5TYCngvldtx
 w0UJTOGPmJHq0//gpcvEBd0xOj14wWFgGreSHxt1QPYy4epOUyNEEdEwkLeAN4QEBuf3
 XTf8bpcUNfIqi0Mteldj/r3hDYqODoky39kCY8nGcfr8QDOMrAYcgAEXbNcLzHeU3KSH
 uE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=clYoNNIzaQvTjHnfov5Lh8BmWJlpr+neSA6W96lZcgI=;
 b=FEiS8qwc4tyA7ce1z5EMi7xD02DzvwD8WWOs2PPJtzMSsZvYQl3vy9jWWhXy0H2opG
 H7Mmy737fM7xP411JHMfeQ95aMMDHk4w5CxyUdImnzJ9AXn43+5DxYVhYtZ/V7nzv6o+
 Z5QNb3SuXaEZOqBDprz9h3wAfv5RqjeNFHatwkXmw1/KX3rdHlRVor+Ek452qd+OsaXI
 +pBStAUzOBJXYIiR1FrXFtres+3si6XC6wAhM0Antc+qD/5zyRCplbweWaHSVPD9jM2i
 rU7gOaBvZ0WItDWGdGS1AzxrFBS+rbO+pO1hD62tTKzq1s9Ok+Y7jba2tUfIRtcloRLp
 SU+A==
X-Gm-Message-State: AOAM533bhqzh4Nr8bkiLiCkP+AW0AizRGdmJWVYYiI8yvV/gATM/6CFq
 DglP2jtAPAWcYFJbRnbhas4q3Xcdmd0tuEhNrklAaCnw
X-Google-Smtp-Source: ABdhPJwNs9UernthN7bIOXTnklKQCnu+bXAWl/A2LmPtbksEpIYQmXEMBIv65lIzWXjM6Xp/Wr9zz56gAHcEv1+QsHE=
X-Received: by 2002:a17:907:68c:: with SMTP id
 wn12mr91850ejb.202.1601909270333; 
 Mon, 05 Oct 2020 07:47:50 -0700 (PDT)
MIME-Version: 1.0
References: <SN2PR01MB19689D6667D356E34D42ADE7A80C0@SN2PR01MB1968.prod.exchangelabs.com>
In-Reply-To: <SN2PR01MB19689D6667D356E34D42ADE7A80C0@SN2PR01MB1968.prod.exchangelabs.com>
Date: Mon, 5 Oct 2020 10:47:39 -0400
Message-ID: <CAGNhwTNtsmSECESTmvPOrivHJzQdNs1xf9C6ntvurGFvTWaJEg@mail.gmail.com>
To: "Andrews, Mark J." <andrews.250@osu.edu>
Cc: USRP Users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Compiling custom C++ code on E320
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============6436071566597369451=="
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

--===============6436071566597369451==
Content-Type: multipart/alternative; boundary="000000000000055d4305b0ed9148"

--000000000000055d4305b0ed9148
Content-Type: text/plain; charset="UTF-8"

Hi Mark - Yeah you can't compile your UHD application for your host
computer (not cross-compiled using the USRP's SDK) and expect it to run on
the USRP. The USRP comes with a full UHD and development install, so you
should be able to compile your UHD application directly on the USRP. It
might not be fast, but it should work -- and, be compatible for
execution on the USRP to boot! You can alternatively obtain the USRP's SDK
and cross-compile the UHD application on your host computer with the USRP
as the target processor; then, move the resulting executable to the USRP
and it should work natively there. The E320 also works in "network mode",
meaning that you can use your host computer to run the UHD application and
transport data samples from the USRP to the host computer. This option is
useful and attractive for some users, and the USRP's embedded processor has
significant limitations for processing capabilities. I hope this helps! -
MLD

On Mon, Oct 5, 2020 at 10:17 AM Andrews, Mark J. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I'm pretty new to SDR and am trying to run a custom C++ program on an
> E320.  I modified the "rx_ascii_art_dft.cpp" file on my host computer so
> that it saves the DFTs to files instead of displaying them on the screen
> (with a 1 second delay between DFTs to prevent a million files being
> created).  I recompiled UHD and tested the new rx_ascii_art_dft executable
> and it seems to be doing what I want.  I was hoping (though not really
> expecting) that I could just copy the executable to the E320 and run it on
> there, but that does not work ("cannot execute binary file: Exec format
> error").  I've tried looking at the manual and searching the internet for
> how this is supposed to work, but it's not clear to me.  Am I supposed to:
>
> 1) Rerun the mender filesystem update?  Will this include the newly
> compiled files or will it simply reinstall the original files?
>
> https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_file_system_with_Mender
>
> 2) Compile directly on the E320?
>
> https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_mpm_native
>
> 3) Obtain an SDK and cross-compile?
> https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk
>
> 4) Something else?
>
> If anyone can point me in the right direction or include a link to a good
> "hello world" example/tutorial on creating custom programs that run on the
> E320, it would be greatly appreciated.
>
> Thank you,
> Mark
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000055d4305b0ed9148
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mark - Yeah you can&#39;t compile your UHD application=
=C2=A0for your host computer (not cross-compiled using the USRP&#39;s=C2=A0=
SDK) and expect it to run on the USRP. The USRP comes with a full UHD  and =
development=C2=A0install, so you should be able to compile your UHD applica=
tion directly on the USRP. It might not be fast, but it should work -- and,=
 be compatible=C2=A0for execution=C2=A0on the USRP to boot! You can alterna=
tively obtain the USRP&#39;s SDK and cross-compile the UHD application on y=
our host computer with the USRP as the target processor; then, move the res=
ulting executable to the USRP and it should work natively there. The E320 a=
lso works in &quot;network mode&quot;, meaning that you can use your host c=
omputer to run the UHD application and transport data samples from the USRP=
 to the host computer. This option is useful and attractive for some users,=
 and the USRP&#39;s=C2=A0embedded processor has significant limitations for=
 processing capabilities. I hope this=C2=A0helps! - MLD<br></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 5, 2=
020 at 10:17 AM Andrews, Mark J. via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I&#39;m pretty new to SDR and am trying to run a custom C++ program on an E=
320.=C2=A0 I modified the &quot;rx_ascii_art_dft.cpp&quot; file on my host =
computer so that it saves the DFTs to files instead of displaying them on t=
he screen (with a 1 second delay between DFTs to prevent
 a million files being created).=C2=A0 I recompiled UHD and tested the new =
rx_ascii_art_dft executable and it seems to be doing what I want.=C2=A0 I w=
as hoping (though not really expecting) that I could just copy the executab=
le to the E320 and run it on there, but that
 does not work (&quot;cannot execute binary file: Exec format error&quot;).=
=C2=A0 I&#39;ve tried looking at the manual and searching the internet for =
how this is supposed to work, but it&#39;s not clear to me.=C2=A0 Am I supp=
osed to:
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
1) Rerun the mender filesystem update?=C2=A0 Will this include the newly co=
mpiled files or will it simply reinstall the original files?<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<a href=3D"https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_fil=
e_system_with_Mender" id=3D"gmail-m_-5734274394925140215LPlnk480677" target=
=3D"_blank">https://kb.ettus.com/E320_Getting_Started_Guide#Updating_the_fi=
le_system_with_Mender</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
2) Compile directly on the E320?=C2=A0 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software=
_dev_mpm_native" id=3D"gmail-m_-5734274394925140215LPlnk625665" target=3D"_=
blank">https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev=
_mpm_native</a></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
3) Obtain an SDK and cross-compile?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<a href=3D"https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software=
_dev_sdk" id=3D"gmail-m_-5734274394925140215LPlnk502855" target=3D"_blank">=
https://files.ettus.com/manual/page_usrp_e3xx.html#e3xx_software_dev_sdk</a=
></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
4) Something else?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
If anyone can point me in the right direction or include a link to a good &=
quot;hello world&quot; example/tutorial on creating custom programs that ru=
n on the E320, it would be greatly appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Mark<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000055d4305b0ed9148--


--===============6436071566597369451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6436071566597369451==--

