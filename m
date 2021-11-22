Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B9F4590EF
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 16:08:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B61B238477E
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 10:08:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="I//d92ht";
	dkim-atps=neutral
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C800383FE4
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 10:07:40 -0500 (EST)
Received: by mail-oi1-f169.google.com with SMTP id o4so38312559oia.10
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=L3uYtpUPOAsp8IyLVgcE3ZCmtoOVU2TxqQmkMo/8/Pg=;
        b=I//d92ht5A+yXb4mUgPeJpldPJviBI2Sc6vk3WjVgeP009pME0rQcaaCKIr53VOXiW
         sogGjKjGZfZhr7NQFENXgPVuY2LxQoy9lsWunZuTdjG0guLt9Sf5pfuiICm4gdjo5IQT
         xNC/4QgzqpBIkA4esV6FuFjfPGzMbADdhlNCP8REFjKgciaykb6B4+INqCpNWtjeIDfe
         D71gz24cCnFLGsnVT23SM7X2uZMlxDuEjluIWcChqyL81wKidFM0dZ4PvSTZZiFlxmPH
         FPjSqE0dD+ABMCHjsodnBVomUNghWtn9HrWwyRbafRZ3/mBkil1baOjS2hjGTFu34sbP
         fC0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=L3uYtpUPOAsp8IyLVgcE3ZCmtoOVU2TxqQmkMo/8/Pg=;
        b=HcnSrkh7SpoL1Q1alslKWB4M2aAlwogGk3+l5e+a36eW0LyOYxB1IuRaRwR/dx1BSy
         oRiiQ4nC0CczbLDNXhMuaPZuB2dVWBuOW0n8tf1rUtp4fnXJFLZySNiCoM43gZvNwvX7
         AtZDhaCbaQ2zGfjx3FTVZhJiLa1kyg5AVAtmJEGR5zoa23LrQ/w1/nQrN5subG963oyB
         FT63VCX7ZLApi7PoUQRwAaPNw6U7LAyvGX0nVX1RPzGRkcZOwh0g/FedlkxSKcPmZeOK
         v2pWn7TrbYHOY8pQgSxIuJPZUYp1YROd3TEd24bXPxAfo9zmPWYUDh8cKeQcWQGm1U7M
         2Ecg==
X-Gm-Message-State: AOAM531FEbcjuaaMTJmUkILmbsvLCoTJNLF6GhT3vKwu7kld6MxDZgf4
	Z/KyLPgeLMA9o2KGybyVz0/vRfHqB/aFoHXoP0NdpA==
X-Google-Smtp-Source: ABdhPJzt5EMICkPHRYMeq5lzOtssTu47sVSIVJNcxjlCN2VFgUnEvbEQjq58mNWWg0Few0nBmwrLdhrfv8qw6X9Q21o=
X-Received: by 2002:aca:2408:: with SMTP id n8mr22141387oic.124.1637593659577;
 Mon, 22 Nov 2021 07:07:39 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
 <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com> <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
 <CAB__hTS7toiCaZezkv_7QeDFV3PuTe8QSAMxjJ0bM6PaYvOe+Q@mail.gmail.com>
In-Reply-To: <CAB__hTS7toiCaZezkv_7QeDFV3PuTe8QSAMxjJ0bM6PaYvOe+Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 22 Nov 2021 10:07:28 -0500
Message-ID: <CAB__hTTG6w=QwSGGQ6TxkNZdC2B-rtbBOEErGDZ7yMjWMZpDPQ@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Message-ID-Hash: DSU7OLTDZHKRBWBM3IKGOUOJRQYNBJAD
X-Message-ID-Hash: DSU7OLTDZHKRBWBM3IKGOUOJRQYNBJAD
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DSU7OLTDZHKRBWBM3IKGOUOJRQYNBJAD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0830184450429033827=="

--===============0830184450429033827==
Content-Type: multipart/alternative; boundary="0000000000005dd9e305d161fcfe"

--0000000000005dd9e305d161fcfe
Content-Type: text/plain; charset="UTF-8"

I forgot to mention, your 1G networking looks correct to me. But, I wanted
to point out that it is optional.  In my solution, I only have the SFP+
connections. The N3xx can use that connection for the management ports.
rob

On Mon, Nov 22, 2021 at 10:03 AM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Richard,
> Although you may be able to make it work with a fast switch, it seems it
> would be cheaper to just add the 10 SFP+ ports.  I am presently running an
> 8 SFP+ port solution using two Intel X710-DA4 cards.  I believe I got these
> for about $300 each.
> Rob
>
> On Mon, Nov 22, 2021 at 2:19 AM Richard Bell <richard.bell4@gmail.com>
> wrote:
>
>> Hey Marcus,
>>
>> I would like to be able to use all four channels of each N310 if desired.
>> In that case it would take 2 SFP+ per N310 as I understand it. If I only
>> use 1 channel I would require 1 SFP+ port, I understand your point.
>>
>> Richard
>>
>> On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 2021-11-22 00:55, Richard Bell wrote:
>>>
>>> Hello,
>>>
>>> I am attempting to setup 5 USRP N310's to be controlled by a single
>>> host. You can assume the host has enough processing power to avoid being
>>> the bottleneck. My question here is only concerned with properly setting up
>>> the network so that 100 MHz of bandwidth capture is theoretically supported
>>> by each of the 5 N310's per channel.
>>>
>>> Would the following setup support the above:
>>> 1) Connect each of the 1G Ethernet management ports to a switch and
>>> connect the switch to the host. Each radio should be assigned an IP address
>>> automatically by a DHCP server as I understand it.
>>> 2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host
>>> computer. With 5 N310's this will correspond to 10 total SFP+ ports
>>> required at the host, two per radio.
>>>
>>> Is this correct, or do I need to change something? Also, is there a way
>>> to reduce the required number of SFP+ ports required on the host by using a
>>> 100G switch in some way?
>>>
>>> Thank you for any assistance you can provide
>>>
>>> Richard
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>> I'm slightly confused by the wording. Do you intend to bring in a total
>>> of 1Gsps or 500Gsps?
>>>
>>> A single 10G SFP+ port should support about 200Msps.   Unless I botched
>>> the late-night math, you'd only need both SFP+ ports per N310 if you were
>>> bringing in up to 400Msps.
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000005dd9e305d161fcfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I forgot to mention, your 1G networking looks correct to m=
e. But, I wanted to point out that it is optional.=C2=A0 In my solution, I =
only have the SFP+ connections. The N3xx can use that connection for the ma=
nagement ports.=C2=A0<div>rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 22, 2021 at 10:03 AM Rob Kos=
sler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi Richard,<div>Although you may be able to make it work with a fast switc=
h, it seems it would be cheaper to just add the 10 SFP+ ports.=C2=A0 I am p=
resently running an 8 SFP+ port solution using two Intel X710-DA4 cards.=C2=
=A0 I believe I got these for about $300 each.=C2=A0=C2=A0</div><div>Rob</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Nov 22, 2021 at 2:19 AM Richard Bell &lt;<a href=3D"mailto:richa=
rd.bell4@gmail.com" target=3D"_blank">richard.bell4@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Hey Marcus,<div><br></div><div>I would like to be able to use all=C2=A0f=
our channels of each N310 if desired. In that case it would take 2 SFP+ per=
 N310 as I understand it. If I only use 1 channel I would require 1 SFP+ po=
rt, I understand your point.</div><div><br></div><div>Richard</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, =
Nov 21, 2021 at 10:08 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbrau=
n@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-22 00:55, Richard Bell
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>I am attempting to setup 5 USRP N310&#39;s to be controlled by
          a single host. You can assume the host has enough processing
          power to avoid being the bottleneck. My question here is only
          concerned with properly setting up the network so that 100 MHz
          of bandwidth capture is theoretically supported by each of the
          5 N310&#39;s per channel.</div>
        <div><br>
        </div>
        <div>Would the following setup support the above:</div>
        <div>1) Connect each of the 1G Ethernet management ports to a
          switch=C2=A0and connect the switch to the host. Each radio should
          be assigned an IP address automatically by a DHCP server as I
          understand it.=C2=A0</div>
        <div>2) Connect the SFP+ ports to a corresponding NIC SFP+ port
          on the host computer. With 5 N310&#39;s this will correspond to 1=
0
          total SFP+ ports required at the host, two per radio.</div>
        <div><br>
        </div>
        <div>Is this correct, or do I need to change something? Also, is
          there a way to reduce the required number of SFP+ ports
          required on the host by using a 100G switch in some way?</div>
        <div><br>
        </div>
        <div>Thank you for any assistance you can provide</div>
        <div><br>
          Richard</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I&#39;m slightly confused by the wording. Do you intend to bring in a
    total of 1Gsps or 500Gsps?<br>
    <br>
    A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=A0 Unless=
 I
    botched the late-night math, you&#39;d only need both SFP+ ports per
    N310 if you were bringing in up to 400Msps.<br>
  </div>
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
</blockquote></div>

--0000000000005dd9e305d161fcfe--

--===============0830184450429033827==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0830184450429033827==--
