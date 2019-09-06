Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 590E4ABD75
	for <lists+usrp-users@lfdr.de>; Fri,  6 Sep 2019 18:15:36 +0200 (CEST)
Received: from [::1] (port=42574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6Gta-0007vN-5x; Fri, 06 Sep 2019 12:15:34 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:46685)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1i6GtW-0007oW-S1
 for USRP-users@lists.ettus.com; Fri, 06 Sep 2019 12:15:30 -0400
Received: by mail-oi1-f174.google.com with SMTP id x7so5363666oie.13
 for <USRP-users@lists.ettus.com>; Fri, 06 Sep 2019 09:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dARffsAPPLiHlvGgNKFzMkQXX6tR5OoGOvKttnUB44E=;
 b=Sw21rCjPT1b/j6ejTW7aLJORplTKLlgkFoTGg5sUWphaGgSqgIN+VIj8uh3mLEKjJ8
 FoCmE0KYaUUxMlE9QI9brM35wWvAVm5BMmT7OKAXuyFHe84/ISBT9+u5t63FpJRXycn9
 Tzqc7nDp/J54ozjkoJDgh4wmB5HrwB2sccwPKFye23ZC93GB+LTaBTowZFzuKs+ZViFL
 0t19FROl7zPmj+k7IvjebvDtqH70HJSg7F2ktCOZf1xYz0CnTLme24cxqptpe1TaxIeD
 Xx0lQSUzpKseb8RdQNR62leqlIzPz4eMqWdX7SInGX1I+PuN9YE7yejRZMGAj/lEt2AR
 RNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dARffsAPPLiHlvGgNKFzMkQXX6tR5OoGOvKttnUB44E=;
 b=FbaFJFX0p1YW9UoVfGuBK1HpZF2f2DxuOQIGgpj+XTN/D2MEgOrxRGPs3ixOjEi6S0
 Dg9qFIyFmqI+0hqJfkKSefdn5dN3Wyp3HSCLjoQyzFlBbntem+H9r+ZqfYMS39ozJ6Bg
 /1916mYY27PqbY5aRrJuHhJ1pWJq1Listdj9Ie3JqCTODudcjskDgBlNVAUllHQIk+mi
 YTtSC28dDnw/apbHYIQNzjhq2JYO7/eYnulnjYyGWl85zutNEMiwHQA8WZNF6FFTXZUX
 NUjz5xElDdp+8Gaqt56DYEjqZ5Q17C8NRwd776XYoN2B2Ebi80hBWVXcZQPZhsiMHCjT
 5RtA==
X-Gm-Message-State: APjAAAU73edBQ7NdC9QvSgOXe2BRV4qCf8BGaQZ/Tcl6uALzANPrGbCw
 zc6MXsYgPfcw7Udw50QOYpOkGXS98U//x5YH/qaHnLGN
X-Google-Smtp-Source: APXvYqydynhHQsUt3evccZ2gfXsmwdzK0cliI1DkW9VeGXTP7OzQEdk8MuOqlzSSyGMUS2GNvsYH8Ul5QXQNCahu0e0=
X-Received: by 2002:aca:b70b:: with SMTP id h11mr7963823oif.107.1567786490040; 
 Fri, 06 Sep 2019 09:14:50 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
In-Reply-To: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
Date: Fri, 6 Sep 2019 12:14:38 -0400
Message-ID: <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Subject: Re: [USRP-users] (no subject)
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: USRP list <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2755450402271838656=="
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

--===============2755450402271838656==
Content-Type: multipart/alternative; boundary="000000000000d2a69d0591e4bcda"

--000000000000d2a69d0591e4bcda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rajesh - The block "OFDM Sync Short" is part of the GR out-of-tree (OOT)
module "gr-ieee802-11" ... as are many of the other blocks in the image you
provided. If that OOT is not installed already, it shouldn't be difficult
to do so. Hope this is useful! - MLD

On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear All,
>
> I am trying to decode IEEE 802.11a OFDM receiver as per GRC block diagram
> used in Paper "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM Receiver for
> GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, China.". The scre=
enshot of
> block diagram given below, In GRC, I didn't find "OFDM Sync Short" block,
> any help would be appreciated.
>
> "GRC block diagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, Chin=
a"
>
> Regards
> Rajesh
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--=20
Michael Dickens, Mac OS X Programmer

Ettus Research Technical Support

Email: support@ettus.com

Web: http://www.ettus.com

--000000000000d2a69d0591e4bcda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Rajesh - The block &quot;OFDM Syn=
c Short&quot; is part of the GR out-of-tree (OOT) module &quot;gr-ieee802-1=
1&quot; ... as are many of the other blocks in the image you provided. If t=
hat OOT is not installed already, it shouldn&#39;t be difficult to do so. H=
ope this is useful! - MLD</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>Dear All,</div><div><br></div><div>I a=
m trying to decode IEEE 802.11a OFDM receiver as per GRC block diagram used=
 in Paper &quot;Bloessl et al(2013), An IEEE 802.11a/g/p OFDM Receiver for =
GNU Radio,=C2=A0SRIF=E2=80=9913, August 12, 2013, Hong Kong, China.&quot;. =
The screenshot of block diagram given below, In GRC, I didn&#39;t find &quo=
t;OFDM Sync Short&quot; block, any help would=C2=A0be appreciated.</div><di=
v><br></div><div>&quot;GRC block diagram from Bloessl et al(2013), An IEEE =
802.11a/g/p OFDM Receiver for GNU Radio,=C2=A0SRIF=E2=80=9913, August 12, 2=
013, Hong Kong, China&quot;</div><div><div><br></div></div><div>Regards</di=
v><div>Rajesh</div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_si=
gnature"><div dir=3D"ltr">Michael Dickens, Mac OS X Programmer<br><br>Ettus=
 Research Technical Support<br><br>Email: <a href=3D"mailto:support@ettus.c=
om" target=3D"_blank">support@ettus.com</a><br><br>Web: <a href=3D"http://w=
ww.ettus.com" target=3D"_blank">http://www.ettus.com</a></div></div></div>

--000000000000d2a69d0591e4bcda--


--===============2755450402271838656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2755450402271838656==--

