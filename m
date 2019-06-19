Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B70674BF6D
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2019 19:15:15 +0200 (CEST)
Received: from [::1] (port=45482 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdeB0-0002aQ-QH; Wed, 19 Jun 2019 13:15:14 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:34803)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cavalledor@gmail.com>)
 id 1hdeAv-00028w-VX
 for usrp-users@lists.ettus.com; Wed, 19 Jun 2019 13:15:09 -0400
Received: by mail-qt1-f170.google.com with SMTP id m29so20863737qtu.1
 for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2019 10:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=77LEfkqx16hY6DoN9TuiE7RymclzmAmaDRs6GF9gTB0=;
 b=ap+djGNDGtLd4cqYSqYPmkNqi7uWq30gZz617UeghdyVL6T5ogPBfQ/Hzh3TkEyZ/u
 QoUREmKuRQbq++vql5kehw8kvwP8IxLWsLzQZG/wHlRZJyR5HR5G+Pjtlj70JrlGnsAD
 t7GiDyNl95rU01l55mpstOyC5gq69sSK3wS9kIFqjWNefMj/Qh6JaXwRDj50v3cSC0C7
 knzrPjxY2UKx2LjD5uhP6/pbGOjPG9XXujqSn1+NwN6ttdQnHqadMJMvqGHe9ZxTXmPT
 jBlRUlmB/l5841b5gRLeF8eqF1Gs7DiM2/L7cuf7UnPec526kZWiyLwBJC1TwC6bMr49
 bHEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=77LEfkqx16hY6DoN9TuiE7RymclzmAmaDRs6GF9gTB0=;
 b=FXeiXDe3OJQbph3u1grJtA6oX5ArlLmyGMn7fj9aQLbrcZ10itDq+neOZt3Z+HJfVr
 DszZUIsIymPbVJqGcEj+wn6GXvY1TZ4Pe+AMwG12LtLBWbm3CSaPIPGkziRSrXOGCn9r
 7wRQtt9zxbLYdIlL5uQh0a2W9hAkPNBx+mrqLwtSYNmzKiQ7K9zzrp3/NeFBBJTq6NV3
 dEIVf7pXmGGAJY1CZCnhkt6b2trkpCM9l3nC+WBzCCYMHr0j29B0fAo0OmLWpcC9BODk
 wbT507WQQmdbI0IJvMpMO8TfbmYM4so1gu2HfcxPPt0twOZ/oVjmCQR9q45p3B4Cg7Vd
 DFHA==
X-Gm-Message-State: APjAAAW+bQ+FVV8M+f5m0wQ1D7J6Vez8/ShuFNefLp0jmPOmkfbBTGFK
 2pLcOJk2EmC3aNgxJ5GreeVk3jAyJIrHCmq0Rj8=
X-Google-Smtp-Source: APXvYqwYCB3KRqX7JjcibY3hSfUltYDrIa5kFh1TfkBp5n1xCK42M2XT9YmGh2hiZNA9WnyHEOnqZ7PVTqaD1I4Gyu8=
X-Received: by 2002:ac8:30c4:: with SMTP id w4mr103876146qta.314.1560964469323; 
 Wed, 19 Jun 2019 10:14:29 -0700 (PDT)
MIME-Version: 1.0
References: <CACV8bbcuwx4eT6YtJZEpnUBgZUcZjZLeWw1UZAABM0VK8+iAPQ@mail.gmail.com>
 <CA+JMMq9FDObYNq+0KPf+E7MmQb5-fQJWGGBecVGLw=KbgFWrmA@mail.gmail.com>
In-Reply-To: <CA+JMMq9FDObYNq+0KPf+E7MmQb5-fQJWGGBecVGLw=KbgFWrmA@mail.gmail.com>
Date: Wed, 19 Jun 2019 13:14:17 -0400
Message-ID: <CACV8bbfLvEX5UF+yor_YifbiwnokjxR5A=yi2nCYvMHHXJjW+w@mail.gmail.com>
To: Nick Foster <bistromath@gmail.com>
Subject: Re: [USRP-users] Registering Block Controllers to UHD
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
From: Christian Valledor via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christian Valledor <cavalledor@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0485889080356559699=="
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

--===============0485889080356559699==
Content-Type: multipart/alternative; boundary="000000000000b37d34058bb05ca0"

--000000000000b37d34058bb05ca0
Content-Type: text/plain; charset="UTF-8"

That was it!

Looks like there was some linker magic going on. So once I added the
--whole-archive option it worked.

Thanks,
-Christian


On Wed, Jun 19, 2019 at 9:46 AM Nick Foster <bistromath@gmail.com> wrote:

> This thread might be helpful:
>
> https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html
>
> Nick
>
> On Wed, Jun 19, 2019 at 6:35 AM Christian Valledor via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi All,
>>
>> I'm developing a few custom RFNoC Blocks for a UHD application I'm
>> working on, and I've hit a snag getting UHD to work with my block
>> controllers. Note that I went the C++ route instead of using nocscript and
>> the default block controller to handle some more complex cases.
>>
>> The only way I have been able to get my application to work is if I move
>> my custom controller files into the UHD directory, and re-compile.
>> Otherwise it sees my block and XML, but doesn't register a key, and loads
>> the default block controller.
>>
>> Is there another way to get UHD to play nice with my block without
>> re-compiling it each time?
>>
>> thanks,
>> -Christian
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000b37d34058bb05ca0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That was it!=C2=A0<div><br></div><div>Looks like there was=
 some linker magic going on. So once I added the --whole-archive option it =
worked.</div><div><br></div><div>Thanks,</div><div>-Christian</div><div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jun 19, 2019 at 9:46 AM Nick Foster &lt;<a href=3D"mailto:bi=
stromath@gmail.com">bistromath@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>This thread m=
ight be helpful: <br></div><div><br></div><div><a href=3D"https://www.mail-=
archive.com/usrp-users@lists.ettus.com/msg07959.html" target=3D"_blank">htt=
ps://www.mail-archive.com/usrp-users@lists.ettus.com/msg07959.html</a></div=
><div><br></div><div>Nick<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 19, 2019 at 6:35 AM Christia=
n Valledor via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
 target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi All,<=
br></div><div><br></div><div>I&#39;m developing a few custom RFNoC Blocks f=
or a UHD application I&#39;m working on, and I&#39;ve hit a snag getting UH=
D to work with my block controllers. Note that I went the C++ route instead=
 of using nocscript and the default block controller to handle some more co=
mplex cases.</div><div><br></div><div>The only way I have been able to get =
my application to work is if I move my custom controller files into the UHD=
 directory, and re-compile. Otherwise it sees my block and XML, but doesn&#=
39;t register a key, and loads the default block controller.</div><div><br>=
</div><div>Is there another way to get UHD to play nice with my block witho=
ut re-compiling it each time?</div><div><br></div><div>thanks,</div><div>-C=
hristian</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000b37d34058bb05ca0--


--===============0485889080356559699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0485889080356559699==--

