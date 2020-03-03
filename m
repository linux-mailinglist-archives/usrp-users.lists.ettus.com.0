Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB4F176A70
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 03:08:23 +0100 (CET)
Received: from [::1] (port=55284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j8wyp-0004EP-Cj; Mon, 02 Mar 2020 21:08:19 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:35419)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1j8wyl-00049X-ID
 for usrp-users@lists.ettus.com; Mon, 02 Mar 2020 21:08:15 -0500
Received: by mail-ot1-f43.google.com with SMTP id v10so1493080otp.2
 for <usrp-users@lists.ettus.com>; Mon, 02 Mar 2020 18:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1LSm0J6hDBei86BLHl1H1strWP+CO6/t/dtJWLZZgAw=;
 b=JC5BOtPkFftGc9xGjZ2+06G+OZ33fue/zayTxHrHmQ2tlAS0Jhqmq+s+GgxNuHj4XZ
 A6Ds7vv5t14CLUf7/A2TmHMYa+PTwoyIm70pXlMgt3DVcMSZWbZskyHI32MSJHFnTJwl
 lQt3KqpxBuJxnEIx2SIRD1iXlOcfJWKDsMNo6IALmfM/T4NM2J0iXm25J6CX0tv7+9q1
 i0I0qxXe6HQbhNZy+xvVdN+yv8YqK2nS+HY2ZA+TOjP4YNmDAUeazPP/XqBnAh3Bjdyy
 I3Sh5cvDTPgZMLOG4iQ4mjxBBnrXkaO9y9KYXx1g9CFWHP7ZLzQo+8PWkIhXS3MJvewk
 gbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1LSm0J6hDBei86BLHl1H1strWP+CO6/t/dtJWLZZgAw=;
 b=nYpECs+nY0tp/GM/KUQfdIKKpCoto1N+9ieW1Nox2Lf/HpaIn/lO2B1ZiuszkO+EEv
 qJiAwuB2D95w849CFLxxuJlDVf2YCisgD20LV2SDx5JFy7Icums0aYyZBp8FDJJxOrXZ
 OpHgAmTtobsKiPktiUBWxDEajojDeMVT0mnbHNmlIkCX5CgnA0tMUu0IkxFr520nYYtI
 yPLe7kG4HWrtiERnMPwR2MRE87slJA3dBdOZCHMwEZrwpNwrDRKz3wqeurZYrd7fp+oD
 6FjI1mtMAgxv8Bv0JTGhRC7gQb8IcNSBJgM6Al8X+/Yoo1eGOIAiAvDyYQzd8rYMW9NG
 76ew==
X-Gm-Message-State: ANhLgQ1AH/rMggT9J32TkLhuB9JcnTJSNC8CPOIsIc5sbVliARyXvrqE
 kRHfLgLRRqA979EFcGBvJqA37+xBsdod/0Knpqux4tPJ
X-Google-Smtp-Source: ADFU+vsBsmmbGBIqarW8A5Fc/ZpkeVym+iCdz9dFo0Of6plL6p7Vc6JmEvylA+/h1TdVyGgXc3Z8wPCNNqd09ojhnuk=
X-Received: by 2002:a9d:23e4:: with SMTP id t91mr1668511otb.125.1583201254176; 
 Mon, 02 Mar 2020 18:07:34 -0800 (PST)
MIME-Version: 1.0
References: <trinity-dcbc347f-cd14-4dcb-890c-9783cc458a06-1582568562308@3c-app-gmx-bs61>
 <CAKJyDk+=5pTvDycx5hWuesTJCZCnX6m-ydEH6d1KtPaMT238pA@mail.gmail.com>
 <CACaXmv8xBkTaWyph1kOxg_pUirLLqWpbS1Pe2cp0O=pZpHS-6w@mail.gmail.com>
 <trinity-fcbb0c51-4113-4f87-b5f6-44d5d14e80c3-1583166240891@3c-app-gmx-bap72>
In-Reply-To: <trinity-fcbb0c51-4113-4f87-b5f6-44d5d14e80c3-1583166240891@3c-app-gmx-bap72>
Date: Mon, 2 Mar 2020 20:06:57 -0600
Message-ID: <CACaXmv_HdCwSw2oAQkerkAg0-jd7LBwTmhpxHrCdKtcdaNgVcw@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 over PCIe: Recommended setup? (Windows,
 Linux, which one?)
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0683369993813350353=="
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

--===============0683369993813350353==
Content-Type: multipart/alternative; boundary="0000000000005d0224059fe9c465"

--0000000000005d0224059fe9c465
Content-Type: text/plain; charset="UTF-8"

Hello Lukas:

Yes, I would recommend using the Intel X710-DA2.  It should work solidly
out-of-the-box with Ubuntu 18.04.4 and 19.10.

You will need SFP+ modules, and the 10Gtek module in your Amazon.com link
should work, although we have never tested that specific module before.  We
have successfully used other 10Gtek modules before, but I do not recall
which specific model.  I can dig up this information later, if you need it.

I would suggest using a cable that already has SFP terminations [1,2,3].

Please let me know if you have any further questions.

[1] https://www.ettus.com/all-products/10gige-dc/

[2] https://www.ettus.com/all-products/10gige-1m/

[3] https://www.ettus.com/all-products/10gige-3m/

--Neel Pandeya



On Mon, 2 Mar 2020 at 10:24, Lukas Haase <lukashaase@gmx.at> wrote:

> Hi Neel,
>
> Thank you!
>
> I think moving forward this might be a better solution. Since I have no
> experience with it:
>
> 1. I'll just go with your Intel X710-DA2 recommendation (
> https://www.amazon.com/Intel-Ethernet-Converged-X710-DA2-X710DA2/dp/B00NJ3ZC26)
> but I think I need some SFP+ module, right?
>
> 2. Does it matter which SFP+ module I use? Any recommendation? What about
> this one?
> https://www.amazon.com/10Gtek-SFP-10G-T-S-Compatible-10GBase-T-Transceiver/dp/B01KFBFL16
>
> 3. Would you even recommend using glass fibre instead of copper?
>
> Thanks,
> Luke
>
>
> PS: As a first step I am trying Wheberth's auggestion right now but my
> experience with NI RIO on Windows was very poor so I want to opt for 10Gbe
> in the long run
>
>
>
>
>
> Gesendet: Montag, 24. Februar 2020 um 13:47 Uhr
> Von: "Neel Pandeya" <neel.pandeya@ettus.com>
> An: "Lukas Haase" <lukashaase@gmx.at>
> Cc: "Ettus Mail List" <usrp-users@lists.ettus.com>
> Betreff: Re: [USRP-users] USRP X310 over PCIe: Recommended setup?
> (Windows, Linux, which one?)
>
> Hello Lukas:
>
> Do you have the option of using 10 Gbps Ethernet?
>
> It will provide you the equivalent performance on the X300/X310 as the
> PCIe interface.
>
> The Intel X710-DA2 network card works very well out-of-the-box with Ubuntu
> 18.04 and 19.10.
>
> Most people using Linux and GNU Radio with the X300/X310 use Ethernet,
> instead of PCIe.
>
> --Neel Pandeya
>
>
>
> On Mon, 24 Feb 2020 at 12:38, Robin Coxe via USRP-users <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:
> Hi Lukas.   Most USRP X310 Linux users employ 10gigE to connect to the
> host PC.  PCIe on the USRP X310 uses a proprietary ASIC and the driver is,
> as you discovered, built on an obsolete kernel.  You could attempt to
> appeal directly to NI for support if switching to 10 gigE isn't an option
> for you.
>
> -Robin
>
>
> On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com[mailto:usrp-users@lists.ettus.com]> wrote:Hi,
>
> I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I
> suffered from large connectivity issues so I wanted to switch to Linux for
> quite some time. Also, I need to start modifying gnuradio/uhd source which
> is even more painful in Windows.
>
> I set up an Ubuntu 18.04 system (which is not exactly new) and in the last
> step Linux NI RIO Installation fails. And
> https://files.ettus.com/manual/page_ni_rio_kernel.html[https://files.ettus.com/manual/page_ni_rio_kernel.html]
> states: "Currently, the latest supported kernel version is 4.2.x.". What a
> bummer!
>
> Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?
> If not, what is the recommended setup when someone needs PCIe, gnuradio,
> source code?
> I would really prefer a Debian-like Linux system that's not completely
> outdated (such as pre-bionic).
>
> Best,
> Lukas
>
>
> PS:
>
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description:    Ubuntu 18.04.4 LTS
> Release:        18.04
> Codename:       bionic
> $ uname -a
> Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59
> UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]
>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com_______________________________________________
> USRP-users
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com_______________________________________________USRP-users>
> mailing list
> USRP-users@lists.ettus.com[mailto:USRP-users@lists.ettus.com]
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005d0224059fe9c465
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello Lukas:</div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">Yes, I would recommend using=
 the Intel X710-DA2.=C2=A0 It should work solidly out-of-the-box with Ubunt=
u 18.04.4 and 19.10.<br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif">You will need SFP+ modules, and the 10Gtek mo=
dule in your Amazon.com link should work, although we have never tested tha=
t specific module before.=C2=A0 We have successfully used other 10Gtek modu=
les before, but I do not recall which specific model.=C2=A0 I can dig up th=
is information later, if you need it.<br></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">I would suggest using a cabl=
e that already has SFP terminations [1,2,3].<br></div><div class=3D"gmail_d=
efault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gm=
ail_default" style=3D"font-family:verdana,sans-serif">Please let me know if=
 you have any further questions.</div><div class=3D"gmail_default" style=3D=
"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" sty=
le=3D"font-family:verdana,sans-serif">[1] <a href=3D"https://www.ettus.com/=
all-products/10gige-dc/">https://www.ettus.com/all-products/10gige-dc/</a><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif">[2] <a href=3D"https://www.ettus.com/all-products/10gige-1m/">https://=
www.ettus.com/all-products/10gige-1m/</a></div><div class=3D"gmail_default"=
 style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif">[3] <a href=3D"https://www.e=
ttus.com/all-products/10gige-3m/">https://www.ettus.com/all-products/10gige=
-3m/</a></div><div class=3D"gmail_default" style=3D"font-family:verdana,san=
s-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif">--Neel Pandeya</div><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 2 Mar 2020 at 10:24, =
Lukas Haase &lt;<a href=3D"mailto:lukashaase@gmx.at">lukashaase@gmx.at</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ne=
el,<br>
<br>
Thank you!<br>
<br>
I think moving forward this might be a better solution. Since I have no exp=
erience with it:<br>
<br>
1. I&#39;ll just go with your Intel X710-DA2 recommendation (<a href=3D"htt=
ps://www.amazon.com/Intel-Ethernet-Converged-X710-DA2-X710DA2/dp/B00NJ3ZC26=
" rel=3D"noreferrer" target=3D"_blank">https://www.amazon.com/Intel-Etherne=
t-Converged-X710-DA2-X710DA2/dp/B00NJ3ZC26</a>) but I think I need some SFP=
+ module, right?<br>
<br>
2. Does it matter which SFP+ module I use? Any recommendation? What about t=
his one? <a href=3D"https://www.amazon.com/10Gtek-SFP-10G-T-S-Compatible-10=
GBase-T-Transceiver/dp/B01KFBFL16" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.amazon.com/10Gtek-SFP-10G-T-S-Compatible-10GBase-T-Transceiver/dp/=
B01KFBFL16</a><br>
<br>
3. Would you even recommend using glass fibre instead of copper?<br>
<br>
Thanks,<br>
Luke<br>
<br>
<br>
PS: As a first step I am trying Wheberth&#39;s auggestion right now but my =
experience with NI RIO on Windows was very poor so I want to opt for 10Gbe =
in the long run<br>
<br>
=C2=A0<br>
=C2=A0<br>
=C2=A0<br>
<br>
Gesendet:=C2=A0Montag, 24. Februar 2020 um 13:47 Uhr<br>
Von:=C2=A0&quot;Neel Pandeya&quot; &lt;<a href=3D"mailto:neel.pandeya@ettus=
.com" target=3D"_blank">neel.pandeya@ettus.com</a>&gt;<br>
An:=C2=A0&quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
Cc:=C2=A0&quot;Ettus Mail List&quot; &lt;<a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
Betreff:=C2=A0Re: [USRP-users] USRP X310 over PCIe: Recommended setup? (Win=
dows, Linux, which one?)<br>
<br>
Hello Lukas:<br>
=C2=A0<br>
Do you have the option of using 10 Gbps Ethernet?<br>
=C2=A0<br>
It will provide you the equivalent performance on the X300/X310 as the PCIe=
 interface.<br>
=C2=A0<br>
The Intel X710-DA2 network card works very well out-of-the-box with Ubuntu =
18.04 and 19.10.<br>
=C2=A0<br>
Most people using Linux and GNU Radio with the X300/X310 use Ethernet, inst=
ead of PCIe.<br>
=C2=A0<br>
--Neel Pandeya<br>
=C2=A0<br>
=C2=A0=C2=A0<br>
<br>
On Mon, 24 Feb 2020 at 12:38, Robin Coxe via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com=
</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>]&gt; wrote:<br>
Hi Lukas.=C2=A0 =C2=A0Most USRP X310 Linux users employ 10gigE to connect t=
o the host PC.=C2=A0 PCIe on the USRP X310 uses a proprietary ASIC and the =
driver is, as you discovered, built on an obsolete kernel.=C2=A0 You could =
attempt to appeal directly to NI for support if switching to 10 gigE isn&#3=
9;t an option for you.<br>
=C2=A0<br>
-Robin<br>
=C2=A0=C2=A0<br>
<br>
On Mon, Feb 24, 2020 at 10:23 AM Lukas Haase via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>[mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_bl=
ank">usrp-users@lists.ettus.com</a>]&gt; wrote:Hi,<br>
<br>
I have used USRP X310 over PCIe and gnuradio on Windows for quite a bit. I =
suffered from large connectivity issues so I wanted to switch to Linux for =
quite some time. Also, I need to start modifying gnuradio/uhd source which =
is even more painful in Windows.<br>
<br>
I set up an Ubuntu 18.04 system (which is not exactly new) and in the last =
step Linux NI RIO Installation fails. And <a href=3D"https://files.ettus.co=
m/manual/page_ni_rio_kernel.html%5Bhttps://files.ettus.com/manual/page_ni_r=
io_kernel.html%5D" rel=3D"noreferrer" target=3D"_blank">https://files.ettus=
.com/manual/page_ni_rio_kernel.html[https://files.ettus.com/manual/page_ni_=
rio_kernel.html]</a> states: &quot;Currently, the latest supported kernel v=
ersion is 4.2.x.&quot;. What a bummer!<br>
<br>
Is there any way to get USRP X310 + PCIe working on Ubuntu 18.04?<br>
If not, what is the recommended setup when someone needs PCIe, gnuradio, so=
urce code?<br>
I would really prefer a Debian-like Linux system that&#39;s not completely =
outdated (such as pre-bionic).<br>
<br>
Best,<br>
Lukas<br>
<br>
<br>
PS:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux station 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UT=
C 2020 x86_64 x86_64 x86_64 GNU/Linux<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om_______________________________________________USRP-users" rel=3D"norefer=
rer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_l=
ists.ettus.com_______________________________________________<br>
USRP-users</a> mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a>[mailto:<a href=3D"mailto:USRP-users@lists.ettus.com" ta=
rget=3D"_blank">USRP-users@lists.ettus.com</a>]<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000005d0224059fe9c465--


--===============0683369993813350353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0683369993813350353==--

