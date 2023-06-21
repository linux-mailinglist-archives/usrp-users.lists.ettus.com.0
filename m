Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D054738A06
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 17:45:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 28033384A26
	for <lists+usrp-users@lfdr.de>; Wed, 21 Jun 2023 11:45:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687362332; bh=ZrJhqzphgAhFGoQGuCNUlUtQW8EZ5MlYQhzHMQly3CM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cgXEncc0jlStpCMIWs2cI1JdGhUW3JheoKDfiUVm5kIOxUmhkLHtV/TLVAXC/RJ0V
	 xN4upyVTiyjQx5tXwWTJsbxRVoWDP4BqHkF54wTPNmX8Ynn0WaAsCA+faCPQIsWGi+
	 oCqYfm523nj/dHCdyqJ1zEitNcQWS3pX6nhAWJ++9/Ydp4aCh7x10Rv7L3BdM9IuNz
	 5i9xrVE1OxuWFpXs/AfQNjChPDTXbVXhTaJA7IT3/k102FnAMXg5rcgfm9qnAdUf2e
	 YXijUpYCWVkxteHvHb364fJdjrgkylsXqG+5GjVigM7+/UkaUU/3mxEbQhEDg8BZfW
	 UDOUhmG5Z54kg==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 23DC7381072
	for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 11:44:29 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="jOdKBjXL";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9883123260fso519017066b.0
        for <usrp-users@lists.ettus.com>; Wed, 21 Jun 2023 08:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1687362268; x=1689954268;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9lSd/U9U36pgrz7FNkI62WftzA4EXzAQI5NcJODHKyA=;
        b=jOdKBjXLuQPs8rBjJnqRdleCEgI44NV1C+RvDd5vC4g/uFNFPrzMrPpadrQd/vIXC+
         S6GQG100xmTtBXFxGmH5MAPdW/ezRNvKRPnm4cgqWXpcLtBnJHqK7Vt7HYZyJa0ZWMqE
         jAxBaa+T2JPUCPOzAlV27IKfUoz5QL1Ij8xxpZkFj2Wl25tqyN6kDL2GcJ3x/qe0oAzX
         6QjkKVbnJFyvotbWmvCMoE46OA7l+cjpzBPawwAP7LTuaJGYXLLXRayZDdVOdqd5FAFA
         70u/5xJOaiMhQPSh+jd68Z2u7VZ9IFVKIfbYXFEkxR/XS0CfXdYlh5ZUwyqHP3QkTVHM
         nXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687362268; x=1689954268;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9lSd/U9U36pgrz7FNkI62WftzA4EXzAQI5NcJODHKyA=;
        b=gUazeKvQ40nSuk6le2QTesg5/zS0hIWIkare3vemFDd89FvVkxnqt2b95ij9wCFztF
         V44pUU4unqqWnOoRTZQiqdprhg71fhh1d/1QXhXITkJhg9M75tBH5oc8XEidJltQpmIE
         RFv0YPkGuHkMCAF5RVtUdUqb+vkHQlBq9IYp59JLJch5EjM+PrmVNGhsVzG4on14Laei
         T4mCXPfWc2FMwF11SH6EVuzQMTJ7j3bgmUF2lzSspxJvHTfOXejzFDdE5+n4kTOqCL0U
         XjQtxbWr8qgF5K79+qI125tw/RqRHS/WSCNFCGrzQKRJ1qpcxLZ7Zr9310lH69t7DgYj
         IYhw==
X-Gm-Message-State: AC+VfDyn20WliSWoozaPuXc5dzfUsyQkaobAXqm/RNpb2RTUvFglViT2
	Gkvtw6UrfROon6QZtnqbL5HiiDARi/IcGJn+BE5fBwjT
X-Google-Smtp-Source: ACHHUZ6vlbSNySqlLsoM+XlPVbTJ/sHTH3Gj7qq3FTLLjaaR+hDf4A/1jgvIGFFd6jB30BN3P8nGXGS4ddw2eyexFww=
X-Received: by 2002:a17:907:3f18:b0:983:cb6c:8aa3 with SMTP id
 hq24-20020a1709073f1800b00983cb6c8aa3mr12965001ejc.59.1687362267658; Wed, 21
 Jun 2023 08:44:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAOkUcStztZNDcFMHftzcZXXnQwDbYAOeHZ+eBpJJoNUY8pmGUw@mail.gmail.com>
 <b87ade32-d119-2a53-4cbc-efe60212a90c@gmail.com> <CAOkUcSs3xp1HxeEAF3FOjAU1GLkDqVLu+0-R7Yv2BnE5fa1rAA@mail.gmail.com>
In-Reply-To: <CAOkUcSs3xp1HxeEAF3FOjAU1GLkDqVLu+0-R7Yv2BnE5fa1rAA@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 21 Jun 2023 10:44:11 -0500
Message-ID: <CAFche=jJAskPqyBUFsgup8PRSvYC562rq5JUZPpDynVwG=e_qg@mail.gmail.com>
To: cyberphox <cyberphox@gmail.com>
Message-ID-Hash: GA6OLIJFVRXYPZ37ROR5T4WEL4YXULHY
X-Message-ID-Hash: GA6OLIJFVRXYPZ37ROR5T4WEL4YXULHY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.0 - Reading FPGA core temperature - USRP2974
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GA6OLIJFVRXYPZ37ROR5T4WEL4YXULHY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7328058596265046021=="

--===============7328058596265046021==
Content-Type: multipart/alternative; boundary="000000000000924cac05fea5a4c2"

--000000000000924cac05fea5a4c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marino,

The register is there, but it sounds like we don't expose it through the
API. This utility is out of date, but it can still be used to read the
temperature value:

~/uhd/firmware/usrp3/x300$ python2 x300_debug.py --addr=3D192.168.10.2
--peek=3D0xA02C

In that command, 192.168.10.2 is the IP address for the USRP's SFP port and
0xA02C is the address of the temperature register. That will return the raw
ADC code from the XADC. To convert that to a temperature, use this equation=
:

Temperature(=C2=B0C) =3D XADC_Code * 503.975 / 4096 - 273.15

Thanks,

Wade


On Wed, Jun 21, 2023 at 7:45=E2=80=AFAM cyberphox <cyberphox@gmail.com> wro=
te:

> Thanks Marcus. I could not find any temperature sensors :(
>
>
> On Thu, 15 Jun 2023 at 14:33, Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 15/06/2023 06:31, cyberphox wrote:
>> > Hi All
>> >
>> > I would like to read the FPGA core temperature of the Kintex within
>> > the USRP2974, and any other temperature sensor available, ideally on
>> > the RF boards.
>> >
>> >
>> > Is there an API for this?
>> >
>> > thanks
>> > marino
>> You can use the "usrp_list_sensors" examples app to list all the sensors
>> that are available to the API -- and look at the code
>>    to see how it uses the sensors API.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000924cac05fea5a4c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Marino,</div><div><br></div><div>The register is t=
here, but it sounds like we don&#39;t expose it through the API. This utili=
ty is out of date, but it can still be used to read the temperature value:<=
/div><div><br></div><div>~/uhd/firmware/usrp3/x300$ python2 x300_debug.py -=
-addr=3D192.168.10.2 --peek=3D0xA02C</div><div><br></div><div>
In that command,=20
192.168.10.2

is the IP address for the USRP&#39;s SFP port and 0xA02C is the address of =
the temperature register. That will return the raw ADC code from the XADC. =
To convert that to a temperature, use this equation:</div><div><br></div><d=
iv>Temperature(=C2=B0C) =3D XADC_Code * 503.975 / 4096 - 273.15</div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, Jun 21, 2023 at 7:45=E2=80=AFAM cyberphox &lt;<a href=3D"mailto:cy=
berphox@gmail.com">cyberphox@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Marcus. I cou=
ld not find any temperature sensors :(</div><div><br></div><div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 15 Jun 20=
23 at 14:33, Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On 15/06/2023 06:31, cyberphox wr=
ote:<br>
&gt; Hi All<br>
&gt;<br>
&gt; I would like to read the FPGA core temperature of the Kintex within <b=
r>
&gt; the USRP2974, and any other temperature sensor available, ideally on <=
br>
&gt; the RF boards.<br>
&gt;<br>
&gt;<br>
&gt; Is there an API for this?<br>
&gt;<br>
&gt; thanks<br>
&gt; marino<br>
You can use the &quot;usrp_list_sensors&quot; examples app to list all the =
sensors <br>
that are available to the API -- and look at the code<br>
=C2=A0=C2=A0 to see how it uses the sensors API.<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000924cac05fea5a4c2--

--===============7328058596265046021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7328058596265046021==--
