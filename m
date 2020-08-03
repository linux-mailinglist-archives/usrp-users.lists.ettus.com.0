Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5BA23ABBD
	for <lists+usrp-users@lfdr.de>; Mon,  3 Aug 2020 19:38:17 +0200 (CEST)
Received: from [::1] (port=47514 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2ePd-0005L6-N5; Mon, 03 Aug 2020 13:38:13 -0400
Received: from mail-vs1-f54.google.com ([209.85.217.54]:43200)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1k2ePZ-0005Dy-5n
 for usrp-users@lists.ettus.com; Mon, 03 Aug 2020 13:38:09 -0400
Received: by mail-vs1-f54.google.com with SMTP id j186so19638391vsd.10
 for <usrp-users@lists.ettus.com>; Mon, 03 Aug 2020 10:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HBRXQI9zFTdqlyjq8X9BxXffXGFk7PvwfHQAe1IZG6A=;
 b=16gt1m4ZPd5QiAtiq1nT7rd3LuxX+tjo/vSKtN0CHYNvrrzPBtcbB/EgR0RvHOMpK7
 mJ9zy+Mel8DYMzxuGipLnLVN9M4GsooMfBqbV0ui+KpD7DxEqexY3Ga/P+hgjovCdY1o
 zio3skfFDT+RX+4wD++QfQW8W+8PVZpU5bRJ2dPukf5H1fekymbNZzcQlSwstdCFkvjH
 H1dJBwsXwKERf2ZUiwI+JsGMaAqE7TrbCbF+sESlQyk81cYofUHnh7UemTnJXGAmO53+
 gMrhw4c9jIyZ/UQm5VwfIB9O+VCPty59nm5DqEd/MmJiY1njCRFFv56iB1v5uOuLi3+Q
 gEVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HBRXQI9zFTdqlyjq8X9BxXffXGFk7PvwfHQAe1IZG6A=;
 b=Ao5T2hfnA1sDxMKYuAxKumJ4B/9OgWpEtyFrp/tmpya8GVHJbvxq/y8j7k2aY0a4VR
 IyGBsQ4FNXL3l2IOHLCpL6/rI/mKUIwBcwcDd4xjoDromzyF0E16wO+kUD7V0CajyAGU
 zDM/6LcjxuM8awAadH6H3Q34B0AiGkYddd5RSuTq3WB/vYMSQb2rl+w38vCivjM13OLV
 J/0VFykWwHGRlri1L6uZbEf7SxPGFeL5BECxPi7EeBF7f6BBZhPwhdsnUHMC+XmYpC+A
 l5+h1g2vm2kkjQH2ueetXrH1H3Qu8hy9vNszqVZaypULyw8ml4pLcwjoOrQFGobbPgsV
 uVQw==
X-Gm-Message-State: AOAM533tQhbAZmO3XlaqJDfFzCmU9gwsKa3QfgjIm318Z4o3xENDKQmf
 zufxHc0hdHWhdcTT9erbFlp1GkN95U52HiCNifPkj8LY
X-Google-Smtp-Source: ABdhPJys+qVfZCcjHtTE0k32rnZKjgT+3BbM52cm6TuKedItYGqtsxkBxhcf+Ow/Pxdamvr3l3FVYgODYjNUe/2If3g=
X-Received: by 2002:a67:20c5:: with SMTP id g188mr12745729vsg.27.1596476248470; 
 Mon, 03 Aug 2020 10:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
In-Reply-To: <CAKwrT9SNz7tFqmYrJthCfRUgrHCzqbkKrA+NDPX324NmeSxc-g@mail.gmail.com>
Date: Mon, 3 Aug 2020 13:36:52 -0400
Message-ID: <CAL7q81stTkK_pBQttxPTKB8bg1pUmTc09Uv3f4bUgR2T5K4ngA@mail.gmail.com>
To: Jayant Chhillar <jayant17154@iiitd.ac.in>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] CHIPSCOPE ERROR (RFNOC)
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============7630099511571785537=="
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

--===============7630099511571785537==
Content-Type: multipart/alternative; boundary="000000000000aec91e05abfc97f3"

--000000000000aec91e05abfc97f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You probably have old ILA probe constraints that are no longer valid. They
are written to the "x300_dram.xdc" constraints file and need to be removed.
Use "git checkout x300_dram.xdc" to reset the file. Alternatively, if using
the Vivado GUI, you can remove all the probes via the Chipscope wizard (see
"Setup Up Debug" under Synthesis -> Open Synthesized Design).

On Tue, Jul 28, 2020 at 2:18 AM Jayant Chhillar via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
> I am trying to generate a bitstream for X310 board with the FFT block
> along with few other ettus provided blocks. However, at the time of logic
> optimization step I get this error
>
> ERROR: [Chipscope 16-213] The debug port 'u_ila_0/probe1' has 9
> unconnected channels (bits). This will cause errors during implementation=
.
>
> I=E2=80=99m not able to identify the source of this error. Also, before t=
his
> bitstream generation I did create a bitstream where I used chipscope usin=
g
> the methode defined here:
>
> https://kb.ettus.com/Debugging_FPGA_images
>
> And was able to do that without any errors. However, since then I have
> been getting the above mentioned error.
>
> Thanks
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000aec91e05abfc97f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You probably have old ILA probe constraints that are no lo=
nger valid. They are written to the &quot;x300_dram.xdc&quot; constraints f=
ile and need to be removed. Use &quot;git checkout x300_dram.xdc&quot; to r=
eset the file. Alternatively, if using the Vivado GUI, you can remove all t=
he probes via the Chipscope wizard (see &quot;Setup Up Debug&quot; under Sy=
nthesis -&gt; Open Synthesized Design).<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 28, 2020 at 2:18 AM =
Jayant Chhillar via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi everyone,</div><div d=
ir=3D"auto">I am trying to generate a bitstream for X310 board with the FFT=
 block along with few other ettus provided blocks. However, at the time of =
logic optimization step I get this error</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">ERROR: [Chipscope 16-213] The debug port &#39;u_ila_0/prob=
e1&#39; has 9 unconnected channels (bits). This will cause errors during im=
plementation.<br></div><div dir=3D"auto"><br></div><div dir=3D"auto">I=E2=
=80=99m not able to identify the source of this error. Also, before this bi=
tstream generation I did create a bitstream where I used chipscope using th=
e methode defined here:</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<div><a href=3D"https://kb.ettus.com/Debugging_FPGA_images" target=3D"_blan=
k">https://kb.ettus.com/Debugging_FPGA_images</a></div><br></div><div dir=
=3D"auto">And was able to do that without any errors. However, since then I=
 have been getting the above mentioned error.=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Thanks</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000aec91e05abfc97f3--


--===============7630099511571785537==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7630099511571785537==--

