Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9926D7C2
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 02:30:43 +0200 (CEST)
Received: from [::1] (port=55574 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoGnH-0007Yg-OP; Thu, 18 Jul 2019 20:30:39 -0400
Received: from mail-ot1-f48.google.com ([209.85.210.48]:39011)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hoGnE-0007SQ-FS
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 20:30:36 -0400
Received: by mail-ot1-f48.google.com with SMTP id r21so24954574otq.6
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 17:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kax0MgZigOqilgOVlVKak8bWfodyo/uh2E2bhsLKDmk=;
 b=y3uvzBt5AkWND4PC7XapiuzU6uLfsgN6pb6Gpoj3mdHh7aJOPtyCIF8uqfMZYj6vxB
 h+5miANLJj+dbXXN/8yE7osYan7PqtfmODCaDR0oeccgBcZo8vQMTXa29vfkvSAl3BME
 EYwH2WzrPsAvif0NEEwaHW5kNYea5zK1ooINMrAnal5vSHBQ3HwHE/DPqspCgJrzOnUM
 IIycnV83MNL6Xsc9S91FEEqlgq5OOINK/tiuEin3IHHvYRoprHL3CfGU4Uu/AvnpzUPi
 U5JOXkI29OX9mLHfCI9hsey2eCgitPknibkH01asoD3UDwFTi+Rbq7Zga5PKeWiJwUn9
 ciSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kax0MgZigOqilgOVlVKak8bWfodyo/uh2E2bhsLKDmk=;
 b=QNwj/1pt3hp4WuYPSfVS9gpWG5z9Nv+RKW3/mgDw7//iUlHglTkYiUkmPj8jE0oNVZ
 RZXck9r7b0+y6880DbtH6SOcK3tSPztscP92IaMVV8UG7vV1E+Vn48+WsJhcvkHDbm4g
 zyAabOwTQ7yL42y8EfTK63or2XviJT6ivoAfORRSZBfKqNBuBNAGAFIHKNyZGIRCTsAD
 vU9jr//hkOZoaZLGgAl/Sbp9xPHbRnQzgWHhT6Fy0GOn36Rjnd3jX8SHkhRw6jwjRhEy
 qnsY7cszaYJzdRpfmdh3ijN/cL4qZNZLgfR+n5ktC/uUCqMBnzx6bXa4JX2OiEPfrkVN
 vojg==
X-Gm-Message-State: APjAAAWVSxwfG8g/OlX4OfKwEzyiyrJIpBK/JpCXv55mm24Gcou055FX
 pWFDAbbhxQGZhVnpj7jqOmAxXD3K7lwlcCOEH8czG8tV
X-Google-Smtp-Source: APXvYqzBJyFwq9yjsrFOFbxTP6mOePyu87tp3Le+QEa7Qi2XpV14oTyMhvOEeBxMedEv4L80DoeLr1BiLLcuzAl2Tx4=
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr49785otr.231.1563496195694; 
 Thu, 18 Jul 2019 17:29:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
 <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
 <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
 <C9ED4D1D-D79E-4A11-B294-0E606B0B3BD2@gmail.com>
 <CAFB_ak+_x=neOMA--p-=WGzvmOoP5djT=W6hwzw4GGzfTLJ+TQ@mail.gmail.com>
In-Reply-To: <CAFB_ak+_x=neOMA--p-=WGzvmOoP5djT=W6hwzw4GGzfTLJ+TQ@mail.gmail.com>
Date: Thu, 18 Jul 2019 17:30:13 -0700
Message-ID: <CAL263ix2oC=0Y7u4J8BU1N2ETEbE=FuQRNmPrkBOnVx0MJx0_w@mail.gmail.com>
To: Taylor Eisman <tayloreisman2012@gmail.com>
Subject: Re: [USRP-users] Fwd: Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7025728637066368630=="
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

--===============7025728637066368630==
Content-Type: multipart/alternative; boundary="0000000000005a33df058dfdd341"

--0000000000005a33df058dfdd341
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Taylor,

The behavior of UHD selecting the antenna port for the LF/Basic boards
changed a few releases ago on the X3xx. Instead of setting a subdev spec,
you use the antenna port with the name.

https://files.ettus.com/manual/page_dboards.html#dboards_basicrx

Within the UHD Source/Sink blocks you should not select "TX/RX", "RX2",
"RX1", but instead type "A" or "B" or "AB"



Regards,
Nate Temple

On Thu, Jul 18, 2019 at 5:18 PM Taylor Eisman via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I don=E2=80=99t want to make this about gnuradio, because this isn=E2=80=
=99t the place.
> However, why would gnuradio know to link the ab,a,b,ba antennas to tx/rx
> and rx2?
>
> On Thu, Jul 18, 2019 at 7:14 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> There IS no RX2 or TX/RX antenna names on Basic_rx or Basic_tx boards.
>>
>> You can see In the probe output what the legit antenna names are for the
>> boards you have installed.
>>
>> Sent from my iPhone
>>
>> On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>> Sorry, I misunderstood your question-- did you set up the mode in UHD
>> correctly?
>> http://files.ettus.com/manual/page_dboards.html
>>
>> Also, you might want to double-check the SMA connections just in case.
>> Not sure if the subdev spec has changed in the last year.  Someone who
>> knows the UHD codebase better than I do would have to answer that questi=
on.
>>
>>
>>
>> On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Robin,
>>>
>>> We've set it up so that the RX Daughterboard connects to RX2 and the TX
>>> Daughterboard connects to TX/RX. Previously, we've been able to use the=
se
>>> ports, but now it no longer identifies that we even have these ports. I
>>> don't think the issue is the Daughterboard as this worked less than a y=
ear
>>> ago.
>>>
>>> Thanks,
>>>
>>> Taylor
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005a33df058dfdd341
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Taylor,<br><br>The behavior of UHD selecting the ant=
enna port for the LF/Basic boards changed a few releases ago on the X3xx. I=
nstead of setting a subdev spec, you use the antenna port with the name.<br=
><br><a href=3D"https://files.ettus.com/manual/page_dboards.html#dboards_ba=
sicrx">https://files.ettus.com/manual/page_dboards.html#dboards_basicrx</a>=
<br><br>Within the UHD Source/Sink blocks you should not select &quot;TX/RX=
&quot;, &quot;RX2&quot;, &quot;RX1&quot;, but instead type &quot;A&quot; or=
 &quot;B&quot; or &quot;AB&quot;<br><br><br><br>Regards,<br>Nate Temple</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Jul 18, 2019 at 5:18 PM Taylor Eisman via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div =
dir=3D"auto">I don=E2=80=99t want to make this about gnuradio, because this=
 isn=E2=80=99t the place. However, why would gnuradio know to link the ab,a=
,b,ba antennas to tx/rx and rx2?</div></div><div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 7:14 PM =
Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_bl=
ank">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"auto">There IS no RX2 or TX/RX ante=
nna names on Basic_rx or Basic_tx boards.=C2=A0<div><br></div><div>You can =
see In the probe output what the legit antenna names are for the boards you=
 have installed.=C2=A0<br><br><div id=3D"gmail-m_-7074306487705818811m_5511=
048838064977734AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div></d=
iv></div><div dir=3D"auto"><div><div dir=3D"ltr"><br>On Jul 18, 2019, at 6:=
33 PM, Robin Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br>=
</div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Sorry, I =
misunderstood your question-- did you set up the mode in UHD correctly?<div=
><a href=3D"http://files.ettus.com/manual/page_dboards.html" target=3D"_bla=
nk">http://files.ettus.com/manual/page_dboards.html</a><br></div><div><br><=
/div><div>Also, you might want to double-check the SMA connections just in =
case.</div><div>Not sure if the subdev spec has changed in the last year.=
=C2=A0 Someone who knows the UHD codebase better than I do would have to an=
swer that question.<br></div><div><br></div><div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, =
2019 at 3:26 PM Taylor Eisman via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div dir=3D"ltr"><table class=3D"gmail-m_-7074306487705818811m_551104=
8838064977734gmail-m_4732337847213854491gmail-cf gmail-m_-70743064877058188=
11m_5511048838064977734gmail-m_4732337847213854491gmail-gJ" cellpadding=3D"=
0"><tbody><tr class=3D"gmail-m_-7074306487705818811m_5511048838064977734gma=
il-m_4732337847213854491gmail-acZ"><td class=3D"gmail-m_-707430648770581881=
1m_5511048838064977734gmail-m_4732337847213854491gmail-gF gmail-m_-70743064=
87705818811m_5511048838064977734gmail-m_4732337847213854491gmail-gK"><table=
 class=3D"gmail-m_-7074306487705818811m_5511048838064977734gmail-m_47323378=
47213854491gmail-cf gmail-m_-7074306487705818811m_5511048838064977734gmail-=
m_4732337847213854491gmail-ix" cellpadding=3D"0"><tbody><tr><td class=3D"gm=
ail-m_-7074306487705818811m_5511048838064977734gmail-m_4732337847213854491g=
mail-c2"><div>Robin, <br></div><div><br></div><div>We&#39;ve set it up so t=
hat the RX Daughterboard connects to RX2 and=20
the TX Daughterboard connects to TX/RX. Previously, we&#39;ve been able to=
=20
use these ports, but now it no longer identifies that we even have these
 ports. I don&#39;t think the issue is the Daughterboard as this worked les=
s
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div><=
/td></tr></tbody></table></td><td class=3D"gmail-m_-7074306487705818811m_55=
11048838064977734gmail-m_4732337847213854491gmail-gH gmail-m_-7074306487705=
818811m_5511048838064977734gmail-m_4732337847213854491gmail-bAk"><br></td><=
/tr></tbody></table></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>_______=
________________________________________</span><br><span>USRP-users mailing=
 list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=
=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http:=
//lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_b=
lank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a=
></span><br></div></blockquote></div></div></blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005a33df058dfdd341--


--===============7025728637066368630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7025728637066368630==--

