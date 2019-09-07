Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99352AC628
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 12:53:53 +0200 (CEST)
Received: from [::1] (port=52672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6YLj-00032p-GH; Sat, 07 Sep 2019 06:53:47 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:44149)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rajeshgps@gmail.com>) id 1i6YLf-0002yN-6i
 for USRP-users@lists.ettus.com; Sat, 07 Sep 2019 06:53:43 -0400
Received: by mail-io1-f48.google.com with SMTP id j4so18595652iog.11
 for <USRP-users@lists.ettus.com>; Sat, 07 Sep 2019 03:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nXb6UadSTZS/xQXenBmt07pCTg3IF1+YbLpMUMpzcf8=;
 b=vDJt6J0VuYEbff0D0p92pLmbqS5sl5wmwWm5ceiapaEsgnfx/xBdyQMMaaC2VTLxkC
 B7NliZ/H4Jy3Gx3ZbGlqCWqyfmI7k9F6pGEyK48MkZ7fWwKruw+H0Ql/CwNAqXOzKZ8S
 phWuszBQJkQE4eIbY1CLZolj4gU5mGR8PCWgyGUFShjs2DipF1A4JShvDlfOPew1v0HE
 PCTOD8uDn2m0/reMlwy7uM/TlEdHHN1tf2cPFbLG5VntRvfR9S9W9nsy4rr+3iuc3auD
 ErHBn2XcxqQo3fzDt0q+7Atbg1DsTQmSubGVxwHZU0jHsUfgwdgwZAGGchEq8OjCVx4v
 1LHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nXb6UadSTZS/xQXenBmt07pCTg3IF1+YbLpMUMpzcf8=;
 b=czyoBlcCxYxBfVV88MdwKQZZFtRwWqcQIsgz2YHuvGk80sQ7ZWjHLgKDVubxdMS+lm
 IYZQpNg6nbpxDjbEt+6v8AjUbT01COnbO0lZ7TWBJKH9wG/a7NCrVE6TZJBrJjnrYoHG
 RaGT7ZTUcjm3bVOHzqFK0LxhHYCB4fT3bDtZ9Zcs5MGeGHahzEP2AMIH3fElBGyWRQqA
 c7N8TVkjcTk2KT4BsPufhEI6HiFcRHoMizDB8mQSAB4y/kSbCZ+pMnc2mU9QWXQOIHyA
 qlocGy6GituMg7XEfzt48fHU3v/8vaELy5SN4Y4txpoj2liTn8dRoNSQifMcGr41F7/+
 Exvw==
X-Gm-Message-State: APjAAAUE//qleQH/M5tmVHSO9QHdGOrrGTiCYkEhNWINBkuXo64xqwU+
 xYYK8eW8JNumPVIHaWAVTAp14jjYvVrvZWioU+s=
X-Google-Smtp-Source: APXvYqw4eCabMgrvzGspcEMAiFsK2FkWyQB4QWeIsLpkysy3MXvRExlxv5M/yTtISQNgi6uw0h/3X3qCCTexbmBVvLo=
X-Received: by 2002:a02:890:: with SMTP id 138mr10588138jac.9.1567853582132;
 Sat, 07 Sep 2019 03:53:02 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
In-Reply-To: <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
Date: Sat, 7 Sep 2019 11:52:51 +0100
Message-ID: <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
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
From: "Dr. Rajesh Tiwari via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Cc: USRP list <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6513666797606999529=="
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

--===============6513666797606999529==
Content-Type: multipart/alternative; boundary="000000000000d2ad8a0591f45bec"

--000000000000d2ad8a0591f45bec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Michael,

Many thanks for prompt response. I encountered problem in installing module
"gr-ieee802-11" as it seems requiring gnuradio-companion, version 3.8. I am
not able to update my GRC version 3.7 to 3.8. Any suggestion, please let me
know.

Regards
Rajesh

On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Rajesh - The block "OFDM Sync Short" is part of the GR out-of-tree
> (OOT) module "gr-ieee802-11" ... as are many of the other blocks in the
> image you provided. If that OOT is not installed already, it shouldn't be
> difficult to do so. Hope this is useful! - MLD
>
> On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Dear All,
>>
>> I am trying to decode IEEE 802.11a OFDM receiver as per GRC block diagra=
m
>> used in Paper "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM Receiver fo=
r
>> GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, China.". The scr=
eenshot of
>> block diagram given below, In GRC, I didn't find "OFDM Sync Short" block=
,
>> any help would be appreciated.
>>
>> "GRC block diagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, Chi=
na"
>>
>> Regards
>> Rajesh
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
> --
> Michael Dickens, Mac OS X Programmer
>
> Ettus Research Technical Support
>
> Email: support@ettus.com
>
> Web: http://www.ettus.com
>

--000000000000d2ad8a0591f45bec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI=C2=A0Michael,<div><br></div><div>Many thanks for prompt=
 response. I encountered problem in installing module &quot;gr-ieee802-11&q=
uot; as it seems requiring gnuradio-companion, version 3.8. I am not able t=
o update my GRC version 3.7 to 3.8. Any suggestion, please let me know.</di=
v><div><br></div><div>Regards</div><div>Rajesh</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at =
5:14 PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">mi=
chael.dickens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Rajesh - T=
he block &quot;OFDM Sync Short&quot; is part of the GR out-of-tree (OOT) mo=
dule &quot;gr-ieee802-11&quot; ... as are many of the other blocks in the i=
mage you provided. If that OOT is not installed already, it shouldn&#39;t b=
e difficult to do so. Hope this is useful! - MLD</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 5:10=
 AM Dr. Rajesh Tiwari via USRP-users &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Dear All,</div><div><br></div><div>I am trying to decode IEEE 802.11a OF=
DM receiver as per GRC block diagram used in Paper &quot;Bloessl et al(2013=
), An IEEE 802.11a/g/p OFDM Receiver for GNU Radio,=C2=A0SRIF=E2=80=9913, A=
ugust 12, 2013, Hong Kong, China.&quot;. The screenshot of block diagram gi=
ven below, In GRC, I didn&#39;t find &quot;OFDM Sync Short&quot; block, any=
 help would=C2=A0be appreciated.</div><div><br></div><div>&quot;GRC block d=
iagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFDM Receiver for GNU =
Radio,=C2=A0SRIF=E2=80=9913, August 12, 2013, Hong Kong, China&quot;</div><=
div><div><br></div></div><div>Regards</div><div>Rajesh</div><div><br></div>=
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail-m_=
-1906365911473962634gmail_signature"><div dir=3D"ltr">Michael Dickens, Mac =
OS X Programmer<br><br>Ettus Research Technical Support<br><br>Email: <a hr=
ef=3D"mailto:support@ettus.com" target=3D"_blank">support@ettus.com</a><br>=
<br>Web: <a href=3D"http://www.ettus.com" target=3D"_blank">http://www.ettu=
s.com</a></div></div></div>
</blockquote></div>

--000000000000d2ad8a0591f45bec--


--===============6513666797606999529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6513666797606999529==--

