Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAC939C1CB
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 23:01:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9BB35384DC7
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 17:01:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="mPx9yR13";
	dkim-atps=neutral
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D7C1384612
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 17:00:16 -0400 (EDT)
Received: by mail-ed1-f47.google.com with SMTP id s6so12604265edu.10
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 14:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rab2yLVjoXAEky9ReGdx30NIjQ6Sp11xQS+No/IHYF4=;
        b=mPx9yR1336vtRtutSYuQ09oPTHhJdzsogZcU/tKStZVjamekZguWHjaUYcJaAxx3vF
         2egbQFFph6aTF7ALdwbeALCYbF0yfCFbLrqmt2SjlcOHWYwag+EFA7eAmIxnhyOwX8P9
         TNcsra6RAMUfX0qHOin4qmqfXa01o9AdXK4v5Z5J6rXrOcoW8uZVI4xk5ET+ONA99j8M
         opBAmB9zv0ubTK4kWWIvfDiSduDPNNFzg0Lu525CfsGBDMYe7LCUKAYkIfqrNA6O8URT
         Bd2ePWe5Zl+4VszSOd8GdqRKnnfOT2jRrIuy2hRP5RtKdAioY5/0Z/d5sMtgYC4omKke
         5KRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rab2yLVjoXAEky9ReGdx30NIjQ6Sp11xQS+No/IHYF4=;
        b=OK8KXHsmGPFdqARnQ1YmOIsM3hrxv9aVw8+2y0I8ah9vncvS0aWKgYIpmw2SBDKnHL
         FhjJRVOuB4Y6bj7lXxhgoc6OvZ6nwpjtEHXWcTwhrHHV+2ZZaep4EiRVcL2PPlglcQ7N
         NFu7QP/AS4wmYOc8FyNO1W1pCVv/cJ9y2aj9PuvnxRT907QHWZuM68HagmsOfkxfqvQh
         34sjV2f9u4Iwy8RGs5oQmQX3RaDsHEVE0IExjr/eynFxa7tbPjZvkglWzlTPqSFGfo+7
         uj6x/rXPZFdYMr72aLbkS0FsycGKBt77/czZQbSHbSFZG4JYlRUq1zrg11AVoDM6TAf5
         mtTw==
X-Gm-Message-State: AOAM532Wl5wrGK60PANRRKhela0W0udrnfkEOX0a0wL4TyOlPwGZzg7f
	52ceE/DfZsVKd8Tub7AkwBqvW+25jyKSAriyr8EQDaz9ZNF2nyt0
X-Google-Smtp-Source: ABdhPJyuL9CWVydaCoSt4wLjS+cfw4FhiWp5Ovf6vJm1px6riVQEiEx2lMIQ6E4hsFUMCfTfO3iToPeX4ipcIha6t84=
X-Received: by 2002:aa7:dbc3:: with SMTP id v3mr2744943edt.63.1622840415006;
 Fri, 04 Jun 2021 14:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR12MB38719D13ABC60C01624DC1BCAF3B9@MN2PR12MB3871.namprd12.prod.outlook.com>
 <CAGNhwTM8J-x4L7eRvarjb2qzNc2=CfrEae2X7-YZ4ywfCWdYxA@mail.gmail.com> <d76c077c-d91b-49cf-8111-8ebb65cfb180@gardettoengineering.com>
In-Reply-To: <d76c077c-d91b-49cf-8111-8ebb65cfb180@gardettoengineering.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Fri, 4 Jun 2021 17:00:03 -0400
Message-ID: <CAGNhwTMPUCSezdYLyc6CMFV=3pzH+becMakSCjy19_rK9Nd+Kg@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Message-ID-Hash: XWIG34WFQ2I7KP2KPWC7XHCQBREO36FT
X-Message-ID-Hash: XWIG34WFQ2I7KP2KPWC7XHCQBREO36FT
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ettus Mail List <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Troubles with the QSFP+ on the N3x0 series
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XWIG34WFQ2I7KP2KPWC7XHCQBREO36FT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2071356997212561722=="

--===============2071356997212561722==
Content-Type: multipart/alternative; boundary="00000000000076c52305c3f6fa18"

--00000000000076c52305c3f6fa18
Content-Type: text/plain; charset="UTF-8"

When using White Rabbit, the WR link does not appear to the OS; WR signal
processing is handled directly in the FPGA, and made available to the OS /
UHD via special commands. Or, that's what's supposed to happen. As of UHD
3.14.0.0rc1 WR does not work; we just recently found out this fact, and we
are working hard to get the issue(s) resolved.

I've never used the Aurora FPGA image .. AA or AQ. From <
https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_sfp_protocols >
it looks like AQ uses all 4 QSFP+ lanes, which between the actual Aurora
protocol and using all 4 10 Gb lanes one should be able to get 40 Gb
aggregate data ... literally bits in, bits out ... no ENET overhead!


On Fri, Jun 4, 2021 at 4:43 PM Jason Matusiak <jason@gardettoengineering.com>
wrote:

> Afternoon Michael! This is exactly the info I needed. I misspoke when I
> said WX, I meant XQ.
>
> After putting the new image on, we knew the /data/ directory still had the
> two sfp network setups, but we were expecting something in addition for the
> qsfp. It makes sense that it doesn't //need// to change since we are only
> using 2 lanes of one, or 2 lanes of the other. BUT, what I couldn't be 100%
> sure of is since white rabbit needs Ethernet as well, why wouldn't THAT be
> the sfp0 configuration, make sense? I'm not working the white rabbit side,
> but I understand it to be ip based.
>
> Lastly. If we go the pure Aurora route, I know that we lose white rabbit,
> but we gain a full 40Gbps, right?
>
> Thanks again.
> On Jun 4, 2021, at 4:18 PM, Michael Dickens <michael.dickens@ettus.com>
> wrote:
>>
>> Hi Jason - Answers, and more. I hope this is useful and helps clarify the
>> options. - MLD
>>
>> 1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the
>> XQ FPGA image. I haven't tried that in a while, but it did work for me once
>> upon a time.
>>
>> 2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for
>> data, which is just a single 10 Gb link -- not the QSFP+ port (which is on
>> the N32x only, by the way). If you use the XQ FPGA image with the N32x then
>> you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and 2
>> if you count lanes as 1's-based). In theory you could use 2x SFP+ 10 Gb
>> links on a host NIC and aggregate them via fiber into a QSFP+ adapter
>> attached to the USRP; I've never tried this directly, but I can say that
>> taking QSFP+ off a host NIC and switching lanes works fine using the
>> appropriate adapters and fiber cables and connectors. Just make sure that
>> lanes 0 &/or 1 on the USRP side match up correctly with the other side
>> coming in (whatever lane[s] you choose to use, so long as it/they are valid
>> on the NIC).
>>
>> 3) When using the WX FPGA image with an N3xy, "ifconfig" will report back
>> just "sfp1" as the 10 Gb data link that is connected to SFP+ port 1 on the
>> USRP; not the QSFP+ port (which is, again, on just the N32x); this single
>> link is set that up as you would any data link on a USRP and host. If you
>> use the XQ FPGA image with an N32x, "ifconfig" will report back "sfp0" and
>> "sfp1" as the 2 10 Gb data links, and you set those up just as you would if
>> you were using the XG FPGA image. The FPGA maps between the data link (SFP+
>> or QSFP+) and the OS, so that the OS "sees" 1 or 2 10 Gb links; or that's
>> how I understand this to work ... the end result is the same regardless of
>> where the mapping happens :)
>>
>>
>> On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak <
>> jason@gardettoengineering.com> wrote:
>>
>>> I have been away from USRPs for a while but am back to using some N3x0
>>> units and am having some issues.
>>>
>>> 1 - Does QSFP work with UHD 3.15?  We'd prefer not to go up to v4 yet
>>> due to some issues we've seen in testing it, but I am not sure how well
>>> supported QSFP is on 3.15.
>>>
>>> 2 - When using the QSFP with White Rabbit (WX image), is it correct to
>>> say that the QSFP link is really x2 10Gb links, not a single 20Gb?  Meaning
>>> that we would need a 40Gb QSFP that can handle 4 10G outputs, correct?
>>>
>>> 3 - Lastly, I cannot find any documentation on setting up the QSFP.
>>> I've downloaded a new WX image over Mender, but I don't see where/how to
>>> configure the QSFP.  Is there an article or writeup anywhere that walks
>>> through the steps?
>>>
>>> Thank you
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000076c52305c3f6fa18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When using White Rabbit, the WR link does not appear to th=
e OS; WR signal processing is handled directly in the FPGA, and made availa=
ble=C2=A0to the OS / UHD via special commands. Or, that&#39;s what&#39;s su=
pposed to happen. As of UHD 3.14.0.0rc1 WR does not work; we just recently =
found out this fact, and we are working hard to get the issue(s) resolved.<=
div><br></div><div>I&#39;ve never used the Aurora FPGA image .. AA or AQ. F=
rom &lt;=C2=A0<a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html=
#n3xx_rh_sfp_protocols">https://files.ettus.com/manual/page_usrp_n3xx.html#=
n3xx_rh_sfp_protocols</a> &gt; it looks like AQ uses all 4 QSFP+ lanes, whi=
ch between the actual Aurora protocol and using all 4 10 Gb lanes one shoul=
d be able to get 40 Gb aggregate data ... literally bits in, bits out ... n=
o ENET overhead!</div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 4, 2021 at 4:43 PM Jason M=
atusiak &lt;<a href=3D"mailto:jason@gardettoengineering.com">jason@gardetto=
engineering.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
<div style=3D"zoom:0%"><div dir=3D"auto">Afternoon Michael! This is exactly=
 the info I needed. I misspoke when I said WX, I meant XQ.<br><br></div>
<div dir=3D"auto">After putting the new image on, we knew the /data/ direct=
ory still had the two sfp network setups, but we were expecting something i=
n addition for the qsfp. It makes sense that it doesn&#39;t //need// to cha=
nge since we are only using 2 lanes of one, or 2 lanes of the other. BUT, w=
hat I couldn&#39;t be 100% sure of is since white rabbit needs Ethernet as =
well, why wouldn&#39;t THAT be the sfp0 configuration, make sense? I&#39;m =
not working the white rabbit side, but I understand it to be ip based.<br><=
br></div>
<div dir=3D"auto">Lastly. If we go the pure Aurora route, I know that we lo=
se white rabbit, but we gain a full 40Gbps, right?<br><br></div>
<div dir=3D"auto">Thanks again.</div>
<div class=3D"gmail_quote">On Jun 4, 2021, at 4:18 PM, Michael Dickens &lt;=
<a href=3D"mailto:michael.dickens@ettus.com" target=3D"_blank">michael.dick=
ens@ettus.com</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"marg=
in:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">
<div dir=3D"ltr">
 Hi Jason - Answers, and more. I hope this is useful and helps clarify the =
options. - MLD
 <div>
  <br>
 </div>
 <div>
  1) The N32x QSFP+ port/link/interface should work with UHD 3.15 via the X=
Q FPGA image. I haven&#39;t tried that in a while, but it did work for me o=
nce upon a time.
 </div>
 <div>
  <br>
 </div>
 <div>
  2) When using the WX FPGA image on any N3xy, you get just SFP+ port 1 for=
 data, which is just a single 10 Gb link -- not the QSFP+ port (which is on=
 the N32x only, by the way). If you use the XQ FPGA image with the N32x the=
n you get 1x or 2x 10 Gb links via the QSFP+ port: lanes 0 and 1 (or 1 and =
2 if you count lanes as 1&#39;s-based). In theory you could use 2x SFP+ 10 =
Gb links on a host NIC and aggregate them via fiber into a QSFP+ adapter at=
tached to the USRP; I&#39;ve never tried this directly, but I can say that =
taking QSFP+ off a host NIC and switching lanes works fine using the approp=
riate adapters and fiber cables and connectors. Just make sure that lanes 0=
 &amp;/or 1 on the USRP side match up correctly with the other side coming =
in (whatever lane[s] you choose to use, so long as it/they are valid on the=
 NIC).
 </div>
 <div>
  <br>
 </div>
 <div>
  3) When using the WX FPGA image with an N3xy, &quot;ifconfig&quot; will r=
eport back just &quot;sfp1&quot; as the 10 Gb data link that is connected t=
o SFP+ port 1 on the USRP; not the QSFP+ port (which is, again, on just the=
 N32x); this single link is set that up as you would any data link on a USR=
P and host. If you use the XQ FPGA image with an N32x, &quot;ifconfig&quot;=
 will report back &quot;sfp0&quot; and &quot;sfp1&quot; as the 2 10 Gb data=
 links, and you set those up just as you would if you were using the XG FPG=
A image. The FPGA maps between the data link (SFP+ or QSFP+) and the OS, so=
 that the OS &quot;sees&quot; 1 or 2 10 Gb links; or that&#39;s how I under=
stand this to work ... the end result is the same regardless of where the m=
apping happens :)
 </div>
 <div>
  <br>
 </div>
</div>
<br>
<div class=3D"gmail_quote">
 <div dir=3D"ltr" class=3D"gmail_attr">
  On Fri, Jun 4, 2021 at 2:26 PM Jason Matusiak &lt;
  <a href=3D"mailto:jason@gardettoengineering.com" target=3D"_blank">jason@=
gardettoengineering.com</a>&gt; wrote:
  <br>
 </div>
 <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">=20
  <div dir=3D"ltr">=20
   <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:1=
2pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
     I have been away from USRPs for a while but am back to using some N3x0=
 units and am having some issues.
    <br>=20
    <br> 1 - Does QSFP work with UHD 3.15?=C2=A0 We&#39;d prefer not to go =
up to v4 yet due to some issues we&#39;ve seen in testing it, but I am not =
sure how well supported QSFP is on 3.15.
    <br>=20
    <br> 2 - When using the QSFP with White Rabbit (WX image), is it correc=
t to say that the QSFP link is really x2 10Gb links, not a single 20Gb?=C2=
=A0 Meaning that we would need a 40Gb QSFP that can handle 4 10G outputs, c=
orrect?
    <br>=20
    <br> 3 - Lastly, I cannot find any documentation on setting up the QSFP=
.=C2=A0 I&#39;ve downloaded a new WX image over Mender, but I don&#39;t see=
 where/how to configure the QSFP.=C2=A0 Is there an article or writeup anyw=
here that walks through the steps?
    <br>=20
    <br> Thank you
   </div>=20
  </div> _______________________________________________
  <br> USRP-users mailing list --=20
  <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-user=
s@lists.ettus.com</a>
  <br> To unsubscribe send an email to=20
  <a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usr=
p-users-leave@lists.ettus.com</a>
  <br>=20
 </blockquote>
</div></blockquote></div></div></blockquote></div>

--00000000000076c52305c3f6fa18--

--===============2071356997212561722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2071356997212561722==--
