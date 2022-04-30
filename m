Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C8E515D07
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 14:45:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29D4A384D41
	for <lists+usrp-users@lfdr.de>; Sat, 30 Apr 2022 08:45:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651322723; bh=dLABjMeesZSBDuXm2BpeZYCFoiJ/vvrDoU6m/Y6Gdfg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=koiGhTaXQRUy7EzxsuCW4yeq3o/wmstAT88jR7Wri4+zS9R5chfhYLtrmf32bQDTL
	 06oBv1IEiEzAtDNmj0fGu0BVZSE41O4ZE4gy2pEjXATxWtsfn8iH8ZqSL3KLwudPZz
	 pT7OQ/Hxdea+r4UXWuIN0Kii+nOt4aoY+opN7Sh4rzeUSaUdbRLKvj8QkX3yAoAHMm
	 klzKGpBo96PblvaAqfH6WNE+dHn+/wJnPb078UFSroPku7y384Dhyv9NfgB1x312jg
	 4knb9IrOiaTZlpjmoG8olmFSZ4gNpU8X0CIREYZ6yx/ZQMeMNVH+F2DnXqVMnd2356
	 Sad112jMNGDCg==
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B8F038426C
	for <usrp-users@lists.ettus.com>; Sat, 30 Apr 2022 08:44:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="l0nju3/I";
	dkim-atps=neutral
Received: by mail-io1-f51.google.com with SMTP id m6so8057535iob.4
        for <usrp-users@lists.ettus.com>; Sat, 30 Apr 2022 05:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=j/bJ+M3bSoFZM8MZ9a+wx0uwYTlessNuDpIZwIoEQCE=;
        b=l0nju3/IT4tQrwd7WvP5yyu0/7aZR0Ofn9Z3rraaBEecza9TjgK0ZtVmZ8JMk31yzD
         H0x7+ccupHvz/oA4cM2kOrHydKzbVJkIR1lK8RDdjXzvsgXnWe+aLaFMwIaNNH21TEOC
         /iHwyCfA+6ieqRPBkrpy5pFK/xA1CbRAIfiJaDHJ9BUWcjVi0U7V8ke7LH9FUcs3pM3A
         mO7vv5lPEJH6CNCw0kHbBRrC5oinzWFzsveX5Q6rfIujGOXb3gP3+54V4VcWb7H0hUt7
         YWbiARya/4lMykzq6rBhlYcNLffSkHSIsLlcwTtAA96mTYkIydrEtG8i/4Zm1NppsIGv
         dOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=j/bJ+M3bSoFZM8MZ9a+wx0uwYTlessNuDpIZwIoEQCE=;
        b=P9vV3f+W1avd7I9mEh4KcGdPAsQS2os/pde5TmPvzvHeZ1GRyd3wPyg0Vi1I28ajXD
         Ja3TXqbvL5QHn9R/l5WQ9qHQAE+b6leA0fR/QFFrI6k5ET6P00XUdEwRDKa3fMSQRFk1
         g+DsOADWVAS3RxfbmjZrxtDIhmYBP7l4825JXDhDIDfE6nJKJVHZm3n9QF1FIvBNkq+Z
         c6svkjaxZ8aSto8VIYwiFE+nz42yCm6lrhYvdJ9UczAutQXZma0qIRzKIxU5uPfugSvq
         4Q8qqrsjKb2PPKr/WwLubnV9jRGJHBp2l+eDsPBZz7dic5tI0tJPl/txJan9bnqjDg9Q
         emtw==
X-Gm-Message-State: AOAM530wMrPw0jaeaTlBl1TqyQEt6LJoAz8EpgObVBPA32aj9qlf4S5F
	USLnJQlKpfZI3uLbxmgn8kPxpbydEWRUBAeMbqSM1lRDTC2JQSgX
X-Google-Smtp-Source: ABdhPJxHLOcEy8b6NdSHH/nTpHqnPn/xscqWjfN+3Va1KU1ZO+31vKb8aEQIlypCWDS4AcEfFKgfXqN0gUkh4GNKRKE=
X-Received: by 2002:a05:6602:2dc4:b0:648:adac:bae8 with SMTP id
 l4-20020a0566022dc400b00648adacbae8mr1541394iow.9.1651322656016; Sat, 30 Apr
 2022 05:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <CACaXmv-RY9_BfxBdgEwmMzH7GnwdZK1-0ebLiUBb0+710d4DKg@mail.gmail.com>
In-Reply-To: <CACaXmv-RY9_BfxBdgEwmMzH7GnwdZK1-0ebLiUBb0+710d4DKg@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Sat, 30 Apr 2022 07:43:40 -0500
Message-ID: <CACaXmv_XOgPH3rB_7pVuMjpdVOH4okOh0iD+KbBUQq8OJ79w4A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 6HXRIAPZSGZMHGI4MQGJ6UG77CJTHNAG
X-Message-ID-Hash: 6HXRIAPZSGZMHGI4MQGJ6UG77CJTHNAG
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: SI-SDR-UG Event-3 on Saturday April 30
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6HXRIAPZSGZMHGI4MQGJ6UG77CJTHNAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7099037682109217274=="

--===============7099037682109217274==
Content-Type: multipart/alternative; boundary="000000000000525e9105ddde8495"

--000000000000525e9105ddde8495
Content-Type: text/plain; charset="UTF-8"

The SI-SDR-UG Event-3 will begin in 45 minutes!

You can view the livestream at: https://youtu.be/jYFDseIDZdk


On Fri, 29 Apr 2022 at 20:36, Neel Pandeya <neel.pandeya@ettus.com> wrote:

> The 3rd event of the South Indian SDR User Group (SI-SDR-UG) will be held
> tomorrow on Saturday April 30 at 19:00 (India time).
>
> https://www.softwaredefinedradio.in/
>
> The event is free and is fully virtual.
>
> 19:00 - 19:15 -- Opening Remarks, Introductions, Community Announcements
>
> 19:15 - 20:45 -- "Open Silicon Radio Design for Satellite Communication"
> by Thomas Parry
>
> 20:45 - 21:30 -- "Introduction to Astrophotonics" by Yashodan Vivek
>
> 21:30 - 22:15 -- "Wyners Wiretap Model for Physical Layer Security" by
> Tilak Marupila
>
> 22:15 - 23:45 -- "CaribouLite - Edge-SDR, the Low-Cost SDR for Edge
> Devices" by David Michaeli
>
> 23:45 - 00:00 -- Closing Remarks
>
>

--000000000000525e9105ddde8495
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif"></font><font face=3D"monospace">The SI-SDR-UG Event-3 will=
 begin in 45 minutes!</font></div><font face=3D"monospace"><br></font><div =
class=3D"gmail_default" style=3D""><font face=3D"monospace">You can view th=
e livestream at: <a href=3D"https://youtu.be/jYFDseIDZdk">https://youtu.be/=
jYFDseIDZdk</a></font></div><br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, 29 Apr 2022 at 20:36, Neel Pandeya =
&lt;<a href=3D"mailto:neel.pandeya@ettus.com">neel.pandeya@ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div class=3D"gmail_default"><font face=3D"verdana, sans-serif"><=
/font><font face=3D"monospace">The 3rd event of the South Indian SDR User G=
roup (SI-SDR-UG) will be held tomorrow on Saturday April 30 at 19:00 (India=
 time).</font></div><div class=3D"gmail_default"><font face=3D"monospace"><=
br></font></div><div class=3D"gmail_default"><font face=3D"monospace"><span=
 class=3D"gmail_default"></span><a href=3D"https://www.softwaredefinedradio=
.in/" target=3D"_blank">https://www.softwaredefinedradio.in/</a><br></font>=
</div><font face=3D"monospace"><br>The event is free and is fully virtual.<=
br><br>19:00 - 19:15 -- Opening Remarks, Introductions, Community Announcem=
ents<br><br>19:15 - 20:45 -- &quot;Open Silicon Radio Design for Satellite =
Communication&quot; by Thomas Parry<br><br>20:45 - 21:30 -- &quot;Introduct=
ion to Astrophotonics&quot; by Yashodan Vivek<br><br>21:30 - 22:15 -- &quot=
;Wyners Wiretap Model for Physical Layer Security&quot; by Tilak Marupila<b=
r><br>22:15 - 23:45 -- &quot;CaribouLite - Edge-SDR, the Low-Cost SDR for E=
dge Devices&quot; by David Michaeli<br><br>23:45 - 00:00 -- Closing Remarks=
<br></font><div><font face=3D"monospace"><br></font></div></div>
</blockquote></div>

--000000000000525e9105ddde8495--

--===============7099037682109217274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7099037682109217274==--
