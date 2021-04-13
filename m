Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3435E691
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 20:38:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D6EE0384224
	for <lists+usrp-users@lfdr.de>; Tue, 13 Apr 2021 14:38:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=quanttux-com.20150623.gappssmtp.com header.i=@quanttux-com.20150623.gappssmtp.com header.b="hFahanKP";
	dkim-atps=neutral
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 57B1D384221
	for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 14:38:06 -0400 (EDT)
Received: by mail-lf1-f54.google.com with SMTP id f17so21884233lfu.7
        for <usrp-users@lists.ettus.com>; Tue, 13 Apr 2021 11:38:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanttux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s3+2bi59bHvMEXBLsGUNRwn/VSYQ3KGH5LegCF1F+6Q=;
        b=hFahanKPcAIiPWFWvz9EW0QFNKbRs39FokR1UtWQAVSlNQ+JSUWHO172LQVyu/rnaD
         jpXlZFtb96c0lZ4x8V56ViF9vtzOzD/H0uNvOGFMwL3UQkLM4npDoUz0ISqwTQcPmTcK
         Ldhcl2axmnKrPnl39Ht/uqlwJGimv1IwNu48hu3X7Xgjr8UPep1cT//rvUxZQk6aw7oV
         pRKbIJhJHgDm5xhU+DUJsvkJ1X6GK0tYQA69sO0iO6WQCU275Le9+ouRE2d5M2knpmPC
         gMzoy9w8KjL4KHVwxggAvAW4JJ94cUpTKBaDQpnjlUhnMm6gxIzDqa1Y7B0ojHh5Xg8x
         Y+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s3+2bi59bHvMEXBLsGUNRwn/VSYQ3KGH5LegCF1F+6Q=;
        b=njEHEnyGYOxRSSkV3fv0TwN77pChMGa5EwPX5Yo/zxYmllwTCTJJHNOqxc6Tm2WXbE
         hPbuZlgs+ojstG1NYCc8MOuPD7NZ0rD05oCdkwgu9GYWxudDW0TA0AlEWjIX6esrxuQs
         DTPj0tVKneJ6NoxqRTOZ2Cub8/Ke6KlOyJMCr1+CX56CYQK0mUN8WDxoE7GeHuxCY+bF
         f4tUjC2730ZesrQUYC0gtf4SuVRDW95S9eb0qGJQvJ3ghfCkrLF0BdMtFoUXnNGbAhH6
         Q8EyEpSYx+JqDR3COQGb8jnPj13/4TL++BIT6nGx3c8EpKidZ7qPueQeRZkm5EGpKJnK
         bbFQ==
X-Gm-Message-State: AOAM533rhfWcQXszXVJ4ZD2jsJyd1yB7spMHZLeKSf4WhAcUKozzkHjU
	BUt/TBEhuW5m9iRyusW0vT10OCJBLcaJAovT5V8DhwFZSZdfpg==
X-Google-Smtp-Source: ABdhPJy9laWlH+OAn4xg5VUPx2KnNU2hpwT/M58rEzPcRFdtDvFydTubDKTZohxz6hQosRw3X8oTPnckMq+9FUC4r2w=
X-Received: by 2002:a05:6512:3b26:: with SMTP id f38mr10093175lfv.393.1618339085141;
 Tue, 13 Apr 2021 11:38:05 -0700 (PDT)
MIME-Version: 1.0
References: <Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI@lists.ettus.com>
In-Reply-To: <Rr42AwscUGNFDKWOrsIX0zhpA36roSXwZNM5fOhNI@lists.ettus.com>
From: Robin Coxe <coxe@quanttux.com>
Date: Tue, 13 Apr 2021 11:37:54 -0700
Message-ID: <CAKJyDkJL27kZ6dUzMsMnendscmeQ1D5CZTnUGv4nSEehpbRwBQ@mail.gmail.com>
To: paradis@kwesst.com
Message-ID-Hash: 6QXONREDR4FRT7DH2SIZRC6GYFPYNPG5
X-Message-ID-Hash: 6QXONREDR4FRT7DH2SIZRC6GYFPYNPG5
X-MailFrom: coxe@close-haul.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6QXONREDR4FRT7DH2SIZRC6GYFPYNPG5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7734000439371268629=="

--===============7734000439371268629==
Content-Type: multipart/alternative; boundary="0000000000004bde9f05bfdeee67"

--0000000000004bde9f05bfdeee67
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you checked the B205mini-i board itself to ensure the USB connector
pins are soldered down securely?   There have been instances where a
dislodged connector caused USB connection issues.   (If not, you can either
retouch the connections yourself with a soldering iron or RMA to NI.)



On Tue, Apr 13, 2021 at 11:32 AM <paradis@kwesst.com> wrote:

> Hi Marcus, thanks for the response. So I tried to do what you suggested,
> but unfortunately it=E2=80=99s giving me and error, and google isn=E2=80=
=99t being helpful
> at all, maybe you=E2=80=99ve seen this before?
>
> /usr/local/lib64/uhd/utils/b2xx_fx3_utils: symbol lookup error:
> /usr/local/lib64/uhd/utils/b2xx_fx3_utils: undefined symbol:
> _ZN10b200_iface16fx3_state_stringB5cxx11Eh
>
>
> It seems like the b2xx_fx3_utils is looking for a symbol it can find, is
> there something else I need to do before using the B2xx_fx3_utils?
>
> Thanks!
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000004bde9f05bfdeee67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you checked the B205mini-i board itself to ensure=C2=
=A0the USB connector pins are soldered down securely?=C2=A0 =C2=A0There hav=
e been instances where a dislodged connector caused USB connection issues.=
=C2=A0 =C2=A0(If not, you can either retouch the connections yourself with =
a soldering iron or RMA to NI.)<div><br></div><div><br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 13=
, 2021 at 11:32 AM &lt;<a href=3D"mailto:paradis@kwesst.com">paradis@kwesst=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><p>Hi Marcus, thanks for the response. So I tried to do what you sugges=
ted, but unfortunately it=E2=80=99s giving me and error, and google isn=E2=
=80=99t being helpful at all, maybe you=E2=80=99ve seen this before?</p><p>=
/usr/local/lib64/uhd/utils/b2xx_fx3_utils: symbol lookup error: /usr/local/=
lib64/uhd/utils/b2xx_fx3_utils: undefined symbol: _ZN10b200_iface16fx3_stat=
e_stringB5cxx11Eh</p><p><br></p><p>It seems like the b2xx_fx3_utils is look=
ing for a symbol it can find, is there something else I need to do before u=
sing the B2xx_fx3_utils?</p><p>Thanks!</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000004bde9f05bfdeee67--

--===============7734000439371268629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7734000439371268629==--
