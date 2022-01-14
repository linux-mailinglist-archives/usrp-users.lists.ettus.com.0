Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 038E448EBA8
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 15:27:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B3E54385732
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 09:27:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Z2B/aAmo";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 81C2738568F
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 09:26:32 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id h14so24297000ybe.12
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 06:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2E3J6hy5KMF/gXqz2MxncxNVKPmjXRePG8RWeEw0up8=;
        b=Z2B/aAmop2X4azrkkuGhDOgi85zLKBkr5nU1pHmjRBnblLufEIdWxdMJ6+wGhvcp2r
         3kjEhDzVhdenR6AqbVdJ3Y+Xi5arGKpjmdIzHefP3Jm+g2NAhQpmxNLHaBzyWDgP9lkl
         H79XAHJOihy2rftAr1EDa+pZ/S7xYC8LdcOKH3/NVMGZcjFZmGIdeOwuAqUDio7KhRn5
         DTIQjhH8umLKKrjEtOiqQa+xfNzXb4Sm56+8LZ1VcGeLwVn/E3BC3oN6rHDz2XthEJVf
         IMkhx2ACA78DQW8T0JvXu4Jz/ItEI+D1LCHVs1CrhdAR20Nz+ZbhGBfNYTbug2ywlUAY
         UobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2E3J6hy5KMF/gXqz2MxncxNVKPmjXRePG8RWeEw0up8=;
        b=s3Y07Lucv0e7DtkNf6Tam/OjyxU1Q8OxEVw/PbxAgdcsw5nuswXTqPJ0F+g68fRvtV
         LSEcMIU6z2EmEiwbBUcL5+ky5u2MZ8PwKLV0XtBCMRs28NVl9+P/Oq4AIgWDH7hmi6b1
         DEFyaiun4ezbnlPx0wK673Y8T5QKKAi4I4K9AK+HP2HjK8POfDMLSSDKE1vz7h2Q5eq1
         MyOHr2nuAkk7yoHrvoGAGAjpBjkAXDQ7Qf30OxMfjgj8/PRQU0d0uJbiugrcWHeazPl/
         PpjKV+esB7q2Zg+sSS0fqESAJ8cgntbPuwRuwz319s27IyUX9v2UsojMXM+IAdaB38Wg
         BFBg==
X-Gm-Message-State: AOAM531YxPnsTCSbPccHQqun1SUGa0KVBhO7eAMrIqVq1aFD9Liqip9+
	B3qVa6terjRdy6JwpAAha027FjBVeY/3VhpdBDcGqv0Lfno=
X-Google-Smtp-Source: ABdhPJwkLGgzXDo9hJSXK0Yf8RjVD+xRrSp4KK74jzu7/DNHz/yXHvcZsRLPiPoUJA9SyFx12Va+hHCC3D2Q5tEeCUc=
X-Received: by 2002:a25:c403:: with SMTP id u3mr12640602ybf.389.1642170391587;
 Fri, 14 Jan 2022 06:26:31 -0800 (PST)
MIME-Version: 1.0
References: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com> <CAB__hTQ6tr3TTmRChFu__utx+H1-0GJY0p-rU91PBg4HZMx0zA@mail.gmail.com>
In-Reply-To: <CAB__hTQ6tr3TTmRChFu__utx+H1-0GJY0p-rU91PBg4HZMx0zA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 14 Jan 2022 09:26:23 -0500
Message-ID: <CAB__hTT6F+xQErQP-OCfJn5ct99E9wWcFF1YTLc9b-gvNSjLrw@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: NVTKN445QE3D4WZRID2OIWPBS7NOBOWX
X-Message-ID-Hash: NVTKN445QE3D4WZRID2OIWPBS7NOBOWX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NVTKN445QE3D4WZRID2OIWPBS7NOBOWX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4669851384488796936=="

--===============4669851384488796936==
Content-Type: multipart/alternative; boundary="000000000000da4a1505d58b96c7"

--000000000000da4a1505d58b96c7
Content-Type: text/plain; charset="UTF-8"

Forgot to mention, there are some nice LEDs on the LO Tx Outputs that will
tell you if you have a given port enabled.

On Fri, Jan 14, 2022 at 9:25 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Paul,
> Based on the block diagram
> <https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_lo_sharing>,
> I think I would set both LOs to use an external source. I would set the
> Tx0 export the LO on Tx Output 0 and then route it directly back into Tx
> Input 1 which then goes to a 1:2 splitter to feed both inputs.  In addition
> to exporting the LO and setting the LO source to external for both ports,
> you also need to enable the Tx Output 0 (disabled by default). I've
> forgotten the command to do so.
> Rob
>
>
>
> On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides <maud.dib1984@gmail.com>
> wrote:
>
>> I am trying to configure the N321 to take some TX phase measurements
>> between RF0 and RF1
>> I have updated the file system to the latest release using the KB
>> guidance.
>>
>> My host/software side is:
>> GNURadio 3.9.5
>> UHD 4.1.0.5
>> Ubuntu 20.04
>>
>> My gr-uhd block has the LO settings:
>> Channel 0 export = true
>> Channel 0 LO = internal
>>
>> Channel 1 export = false
>> Channel 1 LO = external
>>
>> On the hardware side am I understanding the LO diagram correctly that in
>> order to achieve the highest phase accuracy between channels i need to
>> share the LO between the transmit ports of RF0 and RF1?
>> If so, would I do that by physically connecting the TX LO OUT0 (really
>> 0-3) to TX LO IN1?
>>
>> Am I missing anything obvious for the settings and/or is there a more
>> desirable way to do this?
>>
>> Thanks
>>
>> <end transmission>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000da4a1505d58b96c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Forgot to mention, there are some nice LEDs on the LO Tx O=
utputs that will tell you if you have a given port enabled.</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 14, =
2022 at 9:25 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler=
@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hi Paul,<div>Based on the<a href=3D"https://files.e=
ttus.com/manual/page_usrp_n3xx.html#n3xx_rh_lo_sharing" target=3D"_blank"> =
block diagram</a>, I think I would set both LOs to use an external source. =
I would set the Tx0=C2=A0export the LO on Tx Output 0 and then route it dir=
ectly back into Tx Input 1 which then goes to a 1:2 splitter to feed both i=
nputs.=C2=A0 In addition to exporting the LO and setting the LO source to e=
xternal for both ports, you also need to enable the Tx Output 0 (disabled b=
y default). I&#39;ve forgotten the command to do so.</div><div>Rob</div><di=
v><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides &l=
t;<a href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">I am trying to configure the N321 to take some TX phase measurem=
ents between RF0 and RF1 <br>
I have updated the file system to the latest release using the KB guidance.=
 <br>
<br>
My host/software side is:<br>
GNURadio 3.9.5<br>
UHD 4.1.0.5<br>
Ubuntu 20.04<br>
<br>
My gr-uhd block has the LO settings:<br>
Channel 0 export =3D true<br>
Channel 0 LO =3D internal<br>
<br>
Channel 1 export =3D false<br>
Channel 1 LO =3D external<br>
<br>
On the hardware side am I understanding the LO diagram correctly that in or=
der to achieve the highest phase accuracy between channels i need to share =
the LO between the transmit ports of RF0 and RF1? <br>
If so, would I do that by physically connecting the TX LO OUT0 (really 0-3)=
 to TX LO IN1? <br>
<br>
Am I missing anything obvious for the settings and/or is there a more desir=
able way to do this?<br>
<br>
Thanks<br>
<br>
&lt;end transmission&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000da4a1505d58b96c7--

--===============4669851384488796936==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4669851384488796936==--
