Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B776137628
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 19:38:59 +0100 (CET)
Received: from [::1] (port=56844 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipzBQ-0006RN-5E; Fri, 10 Jan 2020 13:38:56 -0500
Received: from mail-ot1-f42.google.com ([209.85.210.42]:45985)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1ipzBL-0006KW-Qx
 for USRP-users@lists.ettus.com; Fri, 10 Jan 2020 13:38:51 -0500
Received: by mail-ot1-f42.google.com with SMTP id 59so2864122otp.12
 for <USRP-users@lists.ettus.com>; Fri, 10 Jan 2020 10:38:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5EsvLcpLaTWrWR0RKbKtx1C1AcANSLjprLfSsBAdkY8=;
 b=Geq9V2a14W3YOK4DU0GlBtQZH2aKcgZTwc61nZ0LnYOdZs6A0a8UDIvxTBukzHujrb
 fBmdNiTDkXFAg0hNZHdLV3BtwEvjdYNEvGBvKqXQvDlLZ5tIjbnzWFVUDrNzeLlXZkYB
 bv4Z1Gj99LAwhlEkqBw9Ufnee5BtzGtVfyeYJd3VzFscmf0tcJWvlWavI664t9vP6dti
 EUoYYQjIiNb7JfsTSNLEU9FQNzsPRFi61ERHcT7j/KVx+FkqFzc53/M3iQejyXfq/1nQ
 wSX6/9t6XLPRr/4FiQdlWte00FYaXUTm4E+w156Y3qpwlM37Tq+yuPG3Z/RqDIpdcJAn
 8V9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5EsvLcpLaTWrWR0RKbKtx1C1AcANSLjprLfSsBAdkY8=;
 b=bn1aTtavQjv+YuxU3ZpAw8Rn29u8zmdq84mhZICzdYatGAmmicNSlObaRiGq6FULSe
 mOn+/tFcbMi3DAoRsVrB69GdzP+83YSN0dR8EeyxVZ/HXlOEWYn+xU7qQOx1LSkJE2pq
 6XCjVZ7oEkL+sNCp2/K/nPodTvrhhytzyf4OMaBdRYrKXnzL+a/KPmRmLTfJQtc0IRa6
 JpeB45Vnbn5rog4b2F3QXuRT+nTRIaLrW9OSNx4uWa/koW7Bg2/7PQKUvGFi/IBttl59
 mWzjH8Gd3Rp/4D3awlhIXDQ8enNPhg5T7r6VXXUrK3iQF0xeCYnM12wbUNfCq56+6zPD
 0k7A==
X-Gm-Message-State: APjAAAVPWFOKMIQtOd1DuInpXLmbMHhucUhQl4rsq6yxbafs+bcOd6rE
 R2r5pJjhQg7Uga1ilSDXZ3Pjd9SQqe/LPz7GVRA78qwL
X-Google-Smtp-Source: APXvYqyRalCbuI1IBbJnNiPaL2y4DeeyJNp9RENILisl2U8I++4+v8wcK8dO7uB9Nbe1TUuM2jWMaVovC8GcnY2tF3c=
X-Received: by 2002:a05:6830:14d9:: with SMTP id
 t25mr3867857otq.258.1578681491148; 
 Fri, 10 Jan 2020 10:38:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3tS1W9Rhsoc22TCBGQb+4TWsOG8BATrb8vcY89Lv7+SPw@mail.gmail.com>
 <CAEXYVK6GvwjD-PPNOsu6SKkuyz7Nb=oUb72BqjZczBmPmzk=Zg@mail.gmail.com>
 <CAMMoi3s108B0hraaaZYgwzpN6oXez729AnVdEh6G58--O_h6cA@mail.gmail.com>
 <CAEXYVK6z0juZ+a3X=GBDjkD124Aj39Vt_4GPURE1BzjhcuKudw@mail.gmail.com>
In-Reply-To: <CAEXYVK6z0juZ+a3X=GBDjkD124Aj39Vt_4GPURE1BzjhcuKudw@mail.gmail.com>
Date: Fri, 10 Jan 2020 10:40:23 -0800
Message-ID: <CAL263ix1=qbLc-9FN-4hXeLwR6B_5wFmVfqZjOuTZKZFZXsw0Q@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Subject: Re: [USRP-users] Measuring TDOA for Localization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2099019214796274233=="
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

--===============2099019214796274233==
Content-Type: multipart/alternative; boundary="0000000000007e6451059bcd6d3d"

--0000000000007e6451059bcd6d3d
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

To clarify, are you using a common Octoclock, with the 3 X300's in the same
location, or separate locations with 3x Octoclocks? Do you have equal
length cables to the antennas and does the rest of the system match ?

What is your RX frequency ?

What daughterboard are you using?

You may want to try using a decimation factor that will produce an
non-fractional host sample rate, instead of 200e6/22 = 9090909.09090909_
MHz. Does running at 10 MS/s sample rate produce any difference in the
result?


Regards,
Nate Temple

On Thu, Jan 9, 2020 at 4:08 PM Brian Padalino via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On Thu, Jan 9, 2020 at 6:45 PM Richard Bell <richard.bell4@gmail.com>
> wrote:
>
>> No I don't need to know phase information. I'm cross correlating the
>> pairs of receivers and the location of the peak gives me the TDOA. If the
>> hardware chains across different radios introduce different delays, that
>> would invalidate the TDOA measurement. So long as the delay is the same
>> through all the hardware chains, the TDOA estimate will be accurate. Can I
>> assume the hardware delay through X300 USRPs with the same FPGA image and
>> set to the same sampling frequency will be the same?
>>
>
> I'd think the group delay should be pretty consistent - at least within
> 10's of nanoseconds of each other if the setup is identical.
>
> What type of variation are you seeing when you perform your cross
> correlations?  How much variation are you able to handle?
>
> Brian
>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007e6451059bcd6d3d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Richard,<br><br>To clarify, are you using a common O=
ctoclock, with the 3 X300&#39;s in the same location, or separate locations=
 with 3x Octoclocks? Do you have equal length cables to the antennas and do=
es the rest of the system match ?<br><br>What is your RX frequency ? <br><b=
r>What daughterboard are you using?<br><br>You may want to try using a deci=
mation factor that will produce an non-fractional host sample rate, instead=
 of 200e6/22 =3D 9090909.09090909_ MHz. Does running at 10 MS/s sample rate=
 produce any difference in the result?<br><br><br>Regards,<br>Nate Temple</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Thu, Jan 9, 2020 at 4:08 PM Brian Padalino via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Thu, Jan 9, 2020 at 6:45 PM Richard Bell &lt;<=
a href=3D"mailto:richard.bell4@gmail.com" target=3D"_blank">richard.bell4@g=
mail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">No I don&#39;t need to =
know phase information. I&#39;m cross correlating the pairs of receivers an=
d the location of the peak gives me the TDOA. If the hardware chains across=
 different radios introduce different delays, that would invalidate the TDO=
A measurement. So long as the delay is the same through all the hardware ch=
ains, the TDOA estimate will be accurate. Can I assume the hardware delay t=
hrough X300 USRPs with the same FPGA image and set to the same sampling fre=
quency will be the same?<br></div></blockquote><div><br></div><div>I&#39;d =
think the group delay should be pretty consistent - at least within 10&#39;=
s of nanoseconds of each other if the setup is identical.</div><div><br></d=
iv><div>What type of variation are you=C2=A0seeing when you perform your cr=
oss correlations?=C2=A0 How much variation are you able to handle?</div><di=
v><br></div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
</blockquote></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007e6451059bcd6d3d--


--===============2099019214796274233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2099019214796274233==--

