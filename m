Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0A1BC5DC7
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 17:50:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34D5B385FBC
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 11:50:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759938628; bh=yMypjkNhVWdjaCI2VYkb8ila3EdS32f7ebEGCwO6ZBE=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=w8n9bD+83W6IHKZ3g3iLzzj6aACP+oCvTs0wGKhuJiIjFYB7iBjvvBY/KCS1AXx4/
	 7cRGtVsFoWHqmjcnIv0oB/qgwVbd/+Xw7w8LKfGF6YmiIpPQoly8nXaqE60ClDgwOZ
	 Axrya2haNWtCZ/XYpbDlY+23teTW8LlCdhaKAvY/gksHV+0Hm6Dw1JfbWyc/1N67yt
	 C88MoRvZK24Xm6+J3koM83m17VXbiZvUtmCd7m6mSpqdFKFArmiryyoAh7pFWbFbM3
	 i9sKxoKuegy3M4dg6PolQ1K6i8zYsheHM4CPxKLJX58awcgrIbIDeYdhvM0Iffzgai
	 wzBuobvxE+CAw==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A028385F03
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 11:50:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XuaqvDWl";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-743ba48eb71so15045407b3.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Oct 2025 08:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1759938606; x=1760543406; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mcbSolrHD1iRshtfLmaXwUnseYnGQEVpEbGNh2ZCUMU=;
        b=XuaqvDWl3SBRZPZemEn4Sy/wx3FUuW+Cq8LMc90adsK5jwsMKiMzgBFVwH7ChXzhRT
         WkKko6dRA0/qbnHK+wcmgo4RmxKiiK8i1zyBO2DluRGo9FQZeK/tEelQVOhMyzGNJoEY
         hShgSPrMkKkEwWvRM3psp0Sll4n2QiHXZvHCx8Vk+/kYVYTVzErv0m3QliTk4vXytAb4
         5GHebOLYk0ugbMIhkx7J9/B7RTFo5IxZS5GjgGMN7O6fdf3eSsQOFg0cWGbpHdCFdwYW
         njOXjUFykaG20CGDwkrNwScf/F1B26p/LWB8PPzkOzcSG/WZTOLmzgg0CnBlxuy+Ueou
         Vnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759938606; x=1760543406;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mcbSolrHD1iRshtfLmaXwUnseYnGQEVpEbGNh2ZCUMU=;
        b=SSyXnN+gxI5/4yK0nwfXUGFbA28kIj0/Amjj4MjGDXtbGHss9OeGuQYtTn7FVDpgx+
         jHAGMpRLkPKzv+uYQU8/USnwsCPWkHJI2Nmsd04IUEmNDAyeYe8fSog2HGkRiB+zLqxN
         1AO17QlGJXrsPX+GJXnghWkBGJ5bVNaoe+X2K6rGOP1yVXSpMtGmdvK2gzV73liPP2ej
         /orjcLvAEvyyLGF2szqoDJXTVoYh2J0n2jNjNzNOPGZw6ePqH5vMcx4fEHcNcFshyx9F
         8v8J51tURTLI8ZpGDjEKrU3y6/v7cMTxg4Id7D72omWlJ23yQt2LwYbkjTNOyylMn7Qr
         1Mvg==
X-Gm-Message-State: AOJu0Yxx3nGUcMFxET9xcEcoU7nM5r05etadkTVsgBTFodEEXWOXl5xp
	aULtX1KvJ4v1AVYI6aQNMYaYdXAAPj7VahJiEkK4TaayTKC16PAkbrSYd1hBexipCguu+YM/CSa
	lT+9MeGGkstr8KNaidnwdsD90HU0nOU7koat9O7/3
X-Gm-Gg: ASbGncuMn1VYRnTITcENb0kp4G8GjiwzRksIcaDSELCQqh+8NoZNzZzxF/n96ghqUvW
	rVtvEqmtEWOwY1I/iY2pzu0GYbFSvftnNvb4k67570nxrXcd90gKXtSLbs/v09XIZsopyul8Bi5
	WtRiNbRoOGHCltfqrksuGtwRdmU9F28aVR/KcEG67+j04wc2coD4KVumAZBJVL2FBYhwfM7yuJl
	o7F2sQwUs8ZfbF4Xrenp1hIp22YZGcyJdvMNg==
X-Google-Smtp-Source: AGHT+IHsfrR8HSmbSuZFQTs/tnJZuN6Byhp3ngfJ02vw8uGie75gVemnMygex6CIcWHgZwuHoU643S5kaSQ5/BrcBco=
X-Received: by 2002:a53:cecb:0:b0:633:a6fa:386b with SMTP id
 956f58d0204a3-63ccc420754mr2601813d50.9.1759938605648; Wed, 08 Oct 2025
 08:50:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRcNyfshCagutk5SJVp+aaxRLbL8AdBO4pcoSrjyadXPg@mail.gmail.com>
 <CAFOi1A5H3S5N76TnsjXQ2mjF=bX13zEgmpUd1bj9TO2aVEmJQg@mail.gmail.com>
In-Reply-To: <CAFOi1A5H3S5N76TnsjXQ2mjF=bX13zEgmpUd1bj9TO2aVEmJQg@mail.gmail.com>
Date: Wed, 8 Oct 2025 11:49:54 -0400
X-Gm-Features: AS18NWCpCGOTBNF84sHGfNLocWAtihS8sUPBnlM3q-R2P2SMtLcXuZU1Vvn6smw
Message-ID: <CAB__hTSi6jk4N9uCTEeFa9fO8VS6ti1Jt3xHBwS94V97356n1Q@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: MC2UVBJXAUBG4B7F6IUNX7QA76YMLHS7
X-Message-ID-Hash: MC2UVBJXAUBG4B7F6IUNX7QA76YMLHS7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to know streaming rate in arbitrary graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MC2UVBJXAUBG4B7F6IUNX7QA76YMLHS7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8567812728329120346=="

--===============8567812728329120346==
Content-Type: multipart/alternative; boundary="0000000000006ab9b20640a7a3e9"

--0000000000006ab9b20640a7a3e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply.

Another thought I had on the topic was whether it would make sense for this
info (sample rate) to be embedded in one of the metadata words of the
streaming packets. And, not just this data but perhaps additional data such
as the LO frequency and DSP frequency. With this information, the receiver
would know which part of the RF spectrum was associated with the given
baseband samples. But, I recognize that the metadata may be for more
general advanced user purposes such that effectively reserving a few of
these words for items like sample rate might be out-of-bounds.
Rob

On Wed, Oct 8, 2025 at 5:23=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Hey Rob,
>
> this is a great question. The short answer is: You don't have access to
> the info, even though the Streamer is a node in the RFNoC graph. I believ=
e
> that would be a great API extension, but I would have to think about how =
to
> cleanly integrate that without breaking any other APIs.
>
> You may have noticed we extended the streamers with the
> post_input_action()/post_output_action() APIs that add RFNoC-features to
> the streamers, and they don't do anything for non-RFNoC devices (like the
> B2xx). Something like this may be the solution. But as of now, there's no
> solution for you.
>
> --M
>
> On Fri, Sep 26, 2025 at 9:37=E2=80=AFPM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I have a custom c++ application that uses UHD to connect to RFNoC USRPs
>> and tries to behave appropriately for arbitrary graphs. I'm most interes=
ted
>> in directed graphs that go from the Rx radio to Rx streamers through som=
e
>> series of blocks including rate changing blocks such as DDC. I'm wonderi=
ng
>> if there is a generalized approach that would allow me to know the sampl=
e
>> rate of the samples coming through a given streamer.
>>
>> Specifically, I just built an RFNoC image where the one Rx radio output
>> was connected to a 1:2 SplitStream block and then to a 2-channel DDC whi=
ch
>> would allow me to downconvert 2 areas of the instantaneous spectrum from=
 a
>> single radio channel (e.g., GPS at 1176 and 1226 MHz).  The DDC outputs
>> then go to 2 Rx streamers.
>>
>> My understanding is that property propagation would cause the DDC to
>> notify downstream blocks of the change to the EDGE property "samp_rate" =
or
>> something like that.  But, how can the UHD API user get access to this
>> info.  I realize that the rx_streamer is not actually an RFNoC block but=
 it
>> is conceptually similar in many ways.  If I could call a function on the
>> rx_streamer such as "get_input_rate()" (as I can using the DDC block
>> controller), I would have a generic way to know the sample rate of the
>> incoming stream.
>>
>> Let me know if there is some way to obtain this information from UHD.
>> Thanks.
>> Rob
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006ab9b20640a7a3e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the reply.=C2=A0=C2=A0<div><br></div><div>Anoth=
er thought I had on the topic was whether it would make sense for this info=
 (sample rate) to be embedded in one of the metadata words of the streaming=
 packets. And, not just this data but perhaps additional data such as the L=
O frequency and DSP frequency. With this information, the receiver would kn=
ow which part of the RF spectrum was associated with the given baseband sam=
ples. But, I recognize that the metadata may be for more general advanced u=
ser purposes such that effectively reserving a few of these words for items=
 like sample rate might be out-of-bounds.<div>Rob</div></div></div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, Oct 8, 2025 at 5:23=E2=80=AFAM Martin Braun &lt;<a href=3D"=
mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>=
Hey Rob,</div><div><br></div><div>this is a great question. The short answe=
r is: You don&#39;t have access to the info, even though the Streamer is a =
node in the RFNoC graph. I believe that would be a great API extension, but=
 I would have to think about how to cleanly integrate that without=C2=A0bre=
aking any other APIs.</div><div><br></div><div>You may have noticed we exte=
nded the streamers with the post_input_action()/post_output_action() APIs t=
hat add RFNoC-features to the streamers, and they don&#39;t do anything for=
 non-RFNoC devices (like the B2xx). Something like this may be the solution=
. But as of now, there&#39;s no solution for you.</div><div><br></div><div>=
--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Fri, Sep 26, 2025 at 9:37=E2=80=AFPM Rob Kossler via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</div><div>I have a custom c++=
 application that uses UHD to connect to RFNoC USRPs and tries to behave ap=
propriately for arbitrary graphs. I&#39;m most interested in directed graph=
s that go from the Rx radio to Rx streamers through some series of blocks i=
ncluding rate changing blocks such as DDC. I&#39;m wondering if there is a =
generalized approach that would allow me to know the sample rate of the sam=
ples coming through a given streamer.=C2=A0</div><div><br></div><div>Specif=
ically, I just built an RFNoC image where the one Rx radio output was conne=
cted to a 1:2 SplitStream block and then to a 2-channel DDC which would all=
ow me to downconvert 2 areas of the instantaneous spectrum from a single ra=
dio channel (e.g., GPS at 1176 and 1226 MHz).=C2=A0 The DDC outputs then go=
 to 2 Rx streamers.=C2=A0=C2=A0</div><div><br></div><div>My understanding i=
s that property propagation would cause the DDC to notify downstream blocks=
 of the change to the EDGE property &quot;samp_rate&quot; or something like=
 that.=C2=A0 But, how can the UHD API user get access to this info.=C2=A0 I=
 realize that the rx_streamer is not actually an RFNoC block but it is conc=
eptually similar in many ways.=C2=A0 If I could call a function on the rx_s=
treamer such as &quot;get_input_rate()&quot; (as I can using the DDC block =
controller), I would have a generic way to know the sample rate of the inco=
ming stream.</div><div><br></div><div>Let me know if there is some way to o=
btain this information from UHD.</div><div>Thanks.</div><div>Rob</div><div>=
<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006ab9b20640a7a3e9--

--===============8567812728329120346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8567812728329120346==--
