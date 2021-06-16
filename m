Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 745CC3AA292
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 19:38:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7150384A83
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 13:38:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pauPqgg6";
	dkim-atps=neutral
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by mm2.emwd.com (Postfix) with ESMTPS id B4D3138441F
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:37:58 -0400 (EDT)
Received: by mail-io1-f41.google.com with SMTP id k5so33334iow.12
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 10:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D2lwLx3zst/4s/a9XKkEw4VmrchefSn3J6C9s03W/gc=;
        b=pauPqgg6Z/L1Xppv/arpNBFoSsKAbF46rJ9MK395nngaq1rDoMBv6Rigltx8qwtAfA
         DMVISTE/Zl2g6tZaaWbLTgkKWzNHvz7uXqgR7lNwjlpPlk3faW246quNEVXi6CMnB5kd
         SLqZezJB4EE7b9MRw0pEByUPVdJ80EkGA9RVsSQxaSeNtiHEofmz9N4W29sR7m6KvMc2
         h4VkZ1ohXbGfDGYPaHfke7hn9XMgnzIu5GuCrc+Aitrg9wDI7QkIsdMr3RzDhOL9dcV2
         9IvrEi5r5fvxn/KE+gS094k2voPb5EqBZJ6xzL7eXyi9oUraUwQreL87S5VXfg8bSHw5
         38Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D2lwLx3zst/4s/a9XKkEw4VmrchefSn3J6C9s03W/gc=;
        b=YvS5mIQanM++9UzlQwH+uTcifsVimekgdph8uND5VhuaSQadK8LMJQKV7iH1oQ36kL
         4WsYw2uLeoI0CsDl3RbEttHRJQEknXljjsOJwUHhtoUafSJB1csMgAmcN5BDJ0aen8yb
         s1QWpK0K1NKGRciVFUwFjIm4fRt2IhhswuqTblHHD9viXp8S7BQ+9b3Yn0UyVStCdTmc
         riX8GHekw/GYv7od9MypeiNymgFiPHuQ9O6KMPZIDyIErXVCKC8Q3w59x/U7LG1tFH6V
         vYzQ8TymApdiwA+XvebZxlFD66PkS1pRtnurWzn2OBQ+nvn9VwpeuvaAGGSA1MHrQ2ON
         RPYQ==
X-Gm-Message-State: AOAM530AfgyXXKYhXD1ivsiGA8riKHwEZWoH4LgUCqgcSKb5dUg1HEqU
	hl6iDI5hpgLk6dZVQBGHBuwiwytPaQSKCmcMzug=
X-Google-Smtp-Source: ABdhPJxPuHfrUF6gE1qCqreamHbtSA3eq4PABKFd8Ug1BUTv07gyK2Ju4O5PpD9uwGyVraEMYBYk+HZZIlg8Peiq7U4=
X-Received: by 2002:a02:8521:: with SMTP id g30mr484450jai.113.1623865077639;
 Wed, 16 Jun 2021 10:37:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAGLr63sjiDtx3SpTzAP7vo1zQLaOOd8J9uLXgO9rbRcCXiY6hw@mail.gmail.com>
In-Reply-To: <CAGLr63sjiDtx3SpTzAP7vo1zQLaOOd8J9uLXgO9rbRcCXiY6hw@mail.gmail.com>
From: Dan <thebouleoffools@gmail.com>
Date: Wed, 16 Jun 2021 11:37:46 -0600
Message-ID: <CAG==tsujBdURZUYunY9gYzsw3=P9dCpi0+4k5ym44pyDhjy-nA@mail.gmail.com>
To: Cameron Matson <ncmatson95@gmail.com>
Message-ID-Hash: MILM4JH4O57A7ACR7GH7AJAXXAYSNCSJ
X-Message-ID-Hash: MILM4JH4O57A7ACR7GH7AJAXXAYSNCSJ
X-MailFrom: thebouleoffools@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: ettus e312 file system images and gnuradio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MILM4JH4O57A7ACR7GH7AJAXXAYSNCSJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2275229823148978899=="

--===============2275229823148978899==
Content-Type: multipart/alternative; boundary="0000000000001dac5f05c4e58df2"

--0000000000001dac5f05c4e58df2
Content-Type: text/plain; charset="UTF-8"

I believe the images for UHD <4.0 use gnuradio 3.7, and >=4.0 use 3.8. I
needed to cross-compile gnuradio to get it onto my e320, sounds like you'll
have to do the same.

-Dan

On Wed, Jun 16, 2021 at 11:33 AM Cameron Matson <ncmatson95@gmail.com>
wrote:

> Hello all,
>
> I'd like to run gnuradio flowgraphs on an e312 in embedded mode.  My
> understanding is that to do this the gnuradio and uhd versions that I build
> the flowgraph with on my host machine must match that of the embedded
> environment on the e312.
>
> I'd like to use gnuradio 3.8 and uhd 3.15.  I've installed gnuradio and
> uhd (in this case on mac via macports), but when I use the
> uhd_images_downloader tool the .sdimg image I get has gnuradio 3.7.  I'd
> like to avoid building a custom file system.  Is there an already built
> image that meets my needs or am I out of luck?
>
> Also I noticed the uhd docs say:
>
> "7. E310 filesystem no longer contains GNURadio by default. Custom
> filesystems are need to run GNURadio."
>
>
> I'm a little confused what that exactly means as I have recent images with
> gnuradio installed.  Does this mean literally the e310 (as opposed to e312)
> or is this what I'm running into in the sense that there's only the much
> older gnuradio 3.7?
>
> In general what is the intended workflow for using the e312 in embedded
> mode if not via gnuradio flowgraphs?
>
> Thanks for your help,
>
> Cameron
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


-- 
Dan "The Man Himself" Brunski

--0000000000001dac5f05c4e58df2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I believe the images for UHD &lt;4.0 use gnuradio 3.7=
, and &gt;=3D4.0 use 3.8. I needed to cross-compile gnuradio to get it onto=
 my e320, sounds like you&#39;ll have to do the same.</div><div><br></div><=
div>-Dan<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Jun 16, 2021 at 11:33 AM Cameron Matson &lt;<a hr=
ef=3D"mailto:ncmatson95@gmail.com">ncmatson95@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr">Hello all,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I=
&#39;d like to run gnuradio flowgraphs on an e312 in embedded mode.=C2=A0 M=
y understanding is that to do this the gnuradio and uhd versions that I bui=
ld the flowgraph with on my host machine must match that of the embedded en=
vironment=C2=A0on the e312.<div><br></div><div>I&#39;d like to use gnuradio=
 3.8 and uhd 3.15.=C2=A0 I&#39;ve installed gnuradio and uhd (in this case =
on mac via macports), but when I use the uhd_images_downloader tool the .sd=
img image I get has gnuradio 3.7.=C2=A0 I&#39;d like to avoid building a cu=
stom file system.=C2=A0 Is there an already built image that meets my needs=
 or am I out of luck?</div><div><br></div><div>Also I noticed the uhd docs =
say:</div><blockquote style=3D"margin:0px 0px 0px 40px;border:medium none;p=
adding:0px"><div>&quot;7. E310<span style=3D"color:rgb(0,0,0);font-family:R=
oboto,sans-serif;font-size:14px"> filesystem no longer contains GNURadio by=
 default. Custom filesystems are </span>need<span style=3D"color:rgb(0,0,0)=
;font-family:Roboto,sans-serif;font-size:14px"> to run GNURadio.&quot;</spa=
n></div></blockquote></div><div dir=3D"ltr"><div><br></div><div>I&#39;m a l=
ittle confused what that exactly means as I have recent images with gnuradi=
o installed.=C2=A0 Does this mean literally the e310 (as opposed to e312) o=
r is this what I&#39;m running into in the sense that there&#39;s only the =
much older gnuradio 3.7?</div><div><br></div><div>In general what is the in=
tended workflow for using the e312 in embedded mode if not via gnuradio flo=
wgraphs?</div><div><br></div><div>Thanks for your help,</div><div><br></div=
><div>Cameron</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">Dan &quot;The Man Himself&quot; Brunski<br></div>

--0000000000001dac5f05c4e58df2--

--===============2275229823148978899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2275229823148978899==--
