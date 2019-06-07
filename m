Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96923391BE
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:17:03 +0200 (CEST)
Received: from [::1] (port=48064 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHY6-0002aX-GJ; Fri, 07 Jun 2019 12:17:02 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:45683)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1hZHY2-0002HE-Ef
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:16:58 -0400
Received: by mail-oi1-f172.google.com with SMTP id m206so1794222oib.12
 for <usrp-users@lists.ettus.com>; Fri, 07 Jun 2019 09:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IBoKagkeLYH/lbJx+jEdBDvpqCYULwDU27ZB2Vo1dY4=;
 b=njVmgI4zd+AaX/RPkkIfXi5MhU/Tu5wfRdlTmnYJFGeZv7Zzu+Fo3DHvMAcDXUeR9g
 Wa/rOJiwg5MS4+CE8AMLaD0NAB+kijllGwUlB5jMg+kGJTKUhsae/Y5LFWdkFixYC8KC
 0M9VOxmMXahkYRsEAPQPWHizz1LWGYMn5+Gz9vb3tW7A3j48Sdrk/n8rjj03v2NMEZzI
 JW/82eBsbHPuWUzdPL5NVIS+ibrPpimOFZBfphZKKgQ2TceOwH6xFbHkekKddxJlDsCR
 8IptI0v9zaAmJz2QCzpuvXiMgyPovwC2+IUPUFCIOj8eznkNlD8guNLVL0fOODJrtpoM
 ddFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IBoKagkeLYH/lbJx+jEdBDvpqCYULwDU27ZB2Vo1dY4=;
 b=XI7Gu+MIGL3wHDbA4i3Jgfn5rrK35YE5cy8pFu9U/xWHf5aRnnKy7e0kuslfMKJjwx
 hwec8YhU7/aIj9w9zqcapDGIgQtGYJiR/jJctTpxGBLvKYKr2xuJqSiZo9LPH66rsPeW
 b/ZMpfw/mnwh9oSMv5vydhEcF9f+xxt8BY4sNVx3rEylbkH1L0QBd/gOjtC86kuE8BS3
 YUW74yQjDwmPCOPBeA9dRh/Laz0oybT2dnO/me15sjRtr8fES45yu//ZVdUIRCz0fdMb
 UxybqWsXxDObq9fMuQYfdAVhN43hClHebumlfMj7IvWD6FBRgLxPrtBhDl6ZE7ZY/gWi
 XpfQ==
X-Gm-Message-State: APjAAAUJ+ECpOZoFeQXs8AU7JLomGGdk3+OqakX3i3bUqtwZaQM9YKlT
 LtSw9G6llPI3UxJ6dl/m7cVaaMSprh4M+mXyGj43ys1C
X-Google-Smtp-Source: APXvYqw4cjEmN8pK/jQAQOtYcSp/NTjWuCZk6yJ487mQwkpfoqEwlyp+CFuK/JmZllxKuUM1ekIxd5AO7YlQNcJqxx4=
X-Received: by 2002:aca:ecc1:: with SMTP id k184mr4389342oih.82.1559924177716; 
 Fri, 07 Jun 2019 09:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
 <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB2340AA2DD249B609B88CBFE3AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Fri, 7 Jun 2019 09:17:11 -0700
Message-ID: <CAL263iw1aYQYx7C6N5t0LtrL3hDUu7zp_jamkRa8aXnE6SiENQ@mail.gmail.com>
To: Jason Matusiak <jason@gardettoengineering.com>
Subject: Re: [USRP-users] E320 hogging the network
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
Cc: Philip Balister <philip@balister.org>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2344591124581757934=="
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

--===============2344591124581757934==
Content-Type: multipart/alternative; boundary="0000000000007d89c5058abe2665"

--0000000000007d89c5058abe2665
Content-Type: text/plain; charset="UTF-8"

Hi Jason,

On the E310, if you pass the device arg addr with 127.0.0.1 does it work as
expected?

uhd_usrp_probe --args "addr=127.0.0.1"


Regards,
Nate Temple

On Fri, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Darn, I was hoping that was it, but I don't think so.
>
>
> Here is the result from my E310:
>
> eth0      Link encap:Ethernet  HWaddr 00:80:2F:25:44:46
>
> and now the E320:
>
> sfp0      Link encap:Ethernet  HWaddr 00:80:2F:24:C2:FB
>
> If I ping each device on my host, then run arp, I see this (the mac
> addresses match up correctly):
>
> Address                  HWtype  HWaddress           Flags Mask
> Iface
> 192.168.10.45            ether   00:80:2f:24:c2:fb   C
>  p4p1
> 192.168.10.95            ether   00:80:2f:25:44:46   C
>  p4p1
>
> I figured that that would be fine though because I have the same issue
> when I am running commands ON my E310.  And if it was a routing issue, it
> would mean that both my machine and the E310 and the E320 were being
> screwed up.
>
>
>
> ------------------------------
> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Friday, June 7, 2019 12:01 PM
> *To:* Jason Matusiak
> *Cc:* Philip Balister; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 hogging the network
>
> Check the MAC addresses.
>
> I know that on some ARM platforms that has to be programmed in at boot and
> perhaps these system images have it set to the same value.
>
> Sent from my iPhone
>
> On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> Philip,
>
>
> They have unique addresses (10.95 and 10.45).  It is really weird that
> when I am on the E310, and set the ip-addr to himself, that he would even
> look off the device....
>
>
> They both have hostnames and they are not similar to each other at all.
>
>
>
> ------------------------------
> *From:* Philip Balister <philip@balister.org>
> *Sent:* Friday, June 7, 2019 11:10 AM
> *To:* Jason Matusiak; Ettus Mail List
> *Subject:* Re: [USRP-users] E320 hogging the network
>
> Check each ones ip address, likely by running ifconfig. In the back of
> my mind, I recall something like this in the E100 days. Do they have the
> same hostname?
>
> Philip
>
> On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:
> > It looks like I am misunderstanding something with how the E320 handles
> the network.
> >
> >
> > I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of
> the default 10.2).  I can ssh into it and things seem to run fine in
> embedded mode.
> >
> >
> > Now, if I ssh onto an E312 that is on the same network (IP 10.95), it
> doesn't work right as long as the E320 is plugged in.  When I do a probe or
> run any other UHD-type commands on the E310, it seems to always talk to the
> E320 first and it screws everything up.  It doesn't matter if I put the
> E310's address into the command or not, the E320 responds.  I also remember
> seeing this occur when I was on my host machine running commands (the E320
> bullied its way into being the main attraction).
> >
> >
> > My current work-around is to unplug Ethernet from the E320, run my
> command on the E310, plug back into the E320, then run its command.  This
> seems to allow things to work as I intended, but is obviously not ideal and
> is fairly difficult to do when devices are remote.
> >
> >
> > So what am I missing here?
> >
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> USRP-users Info Page - Ettus
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
> lists.ettus.com
> To see the collection of prior postings to the list, visit the USRP-users
> Archives.. Using USRP-users: To post a message to all the list members,
> send email to usrp-users@lists.ettus.com. You can subscribe to the list,
> or change your existing subscription, in the sections below.
>
>
> >
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007d89c5058abe2665
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Jason,<br><br>On the E310, if you pass the device ar=
g addr with 127.0.0.1 does it work as expected?<br><br>uhd_usrp_probe --arg=
s &quot;addr=3D127.0.0.1&quot; <br><br><br>Regards,<br>Nate Temple</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Jun 7, 2019 at 9:10 AM Jason Matusiak via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-717118252188596494divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p style=3D"margin-top:0px;margin-bottom:0px">Darn, I was hoping that was i=
t, but I don&#39;t think so.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Here is the result from my E3=
10:</p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>eth0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:25:=
44:46=C2=A0=C2=A0</div>
<div><br>
</div>
and now the E320:
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>sfp0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr 00:80:2F:24:=
C2:FB=C2=A0=C2=A0</div>
<div><br>
</div>
If I ping each device on my host, then run arp, I see this (the mac address=
es match up correctly):
<p></p>
<p style=3D"margin-top:0px;margin-bottom:0px"></p>
<div>Address=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
HWtype=C2=A0 HWaddress=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Flags Mask=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Iface</div>
<div><span style=3D"font-size:12pt">192.168.10.45=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ether=C2=A0 =C2=A000:80:2f:24:c2:fb=C2=A0 =C2=A0C=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p4p1</=
span><br>
</div>
<div>192.168.10.95=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ether=C2=A0 =C2=
=A000:80:2f:25:44:46=C2=A0 =C2=A0C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0p4p1</div>
<div><br>
</div>
I figured that that would be fine though because I have the same issue when=
 I am running commands ON my E310.=C2=A0 And if it was a routing issue, it =
would mean that both my machine and the E310 and the E320 were being screwe=
d up.
<p></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-717118252188596494divRplyFwdMsg" dir=3D"ltr"><font styl=
e=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From=
:</b> Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" target=
=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 12:01 PM<br>
<b>To:</b> Jason Matusiak<br>
<b>Cc:</b> Philip Balister; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>=C2=A0</div>
</div>
<div dir=3D"auto">Check the MAC addresses.=C2=A0
<div><br>
</div>
<div>I know that on some ARM platforms that has to be programmed in at boot=
 and perhaps these system images have it set to the same value.=C2=A0<br>
<br>
<div id=3D"gmail-m_-717118252188596494x_AppleMailSignature" dir=3D"ltr">Sen=
t from my iPhone</div>
<div dir=3D"ltr"><br>
On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" id=3D"gmail-m_-717118252188596494LPlnk639=
361" class=3D"gmail-m_-717118252188596494OWAAutoLink" target=3D"_blank">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div id=3D"gmail-m_-717118252188596494x_divtagdefaultwrapper" dir=3D"ltr" s=
tyle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-=
serif">
<p style=3D"margin-top:0px;margin-bottom:0px">Philip,</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">They have unique addresses (1=
0.95 and 10.45).=C2=A0 It is really weird that when I am on the E310, and s=
et the ip-addr to himself, that he would even look off the device....</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">They both have hostnames and =
they are not similar to each other at all.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-717118252188596494x_divRplyFwdMsg" dir=3D"ltr"><font st=
yle=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>Fr=
om:</b> Philip Balister &lt;<a href=3D"mailto:philip@balister.org" id=3D"gm=
ail-m_-717118252188596494LPlnk882867" class=3D"gmail-m_-717118252188596494O=
WAAutoLink" target=3D"_blank">philip@balister.org</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>=C2=A0</div>
</div>
<div class=3D"gmail-m_-717118252188596494x_BodyFragment"><font size=3D"2"><=
span style=3D"font-size:11pt">
<div class=3D"gmail-m_-717118252188596494x_PlainText">Check each ones ip ad=
dress, likely by running ifconfig. In the back of<br>
my mind, I recall something like this in the E100 days. Do they have the<br=
>
same hostname?<br>
<br>
Philip<br>
<br>
On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; It looks like I am misunderstanding something with how the E320 handle=
s the network.<br>
&gt; <br>
&gt; <br>
&gt; I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead o=
f the default 10.2).=C2=A0 I can ssh into it and things seem to run fine in=
 embedded mode.<br>
&gt; <br>
&gt; <br>
&gt; Now, if I ssh onto an E312 that is on the same network (IP 10.95), it =
doesn&#39;t work right as long as the E320 is plugged in.=C2=A0 When I do a=
 probe or run any other UHD-type commands on the E310, it seems to always t=
alk to the E320 first and it screws everything
 up.=C2=A0 It doesn&#39;t matter if I put the E310&#39;s address into the c=
ommand or not, the E320 responds.=C2=A0 I also remember seeing this occur w=
hen I was on my host machine running commands (the E320 bullied its way int=
o being the main attraction).<br>
&gt; <br>
&gt; <br>
&gt; My current work-around is to unplug Ethernet from the E320, run my com=
mand on the E310, plug back into the E320, then run its command.=C2=A0 This=
 seems to allow things to work as I intended, but is obviously not ideal an=
d is fairly difficult to do when devices
 are remote.<br>
&gt; <br>
&gt; <br>
&gt; So what am I missing here?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"gmail-m_-717118252=
188596494LPlnk624958" class=3D"gmail-m_-717118252188596494OWAAutoLink" targ=
et=3D"_blank">
USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" id=3D"gmail-m_-717118252188596494LPlnk737468" class=3D"gmail-m_-71=
7118252188596494x_OWAAutoLink" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id=3D"gmail-m_-717118252188596494LPBorder_GT_15599226502150.1308906094=
3563968" style=3D"margin-bottom:20px;overflow:auto;width:100%;text-indent:0=
px">
<table id=3D"gmail-m_-717118252188596494LPContainer_15599226502120.04792581=
257573203" style=3D"width:90%;background-color:rgb(255,255,255);overflow:au=
to;padding-top:20px;padding-bottom:20px;margin-top:20px;border-top:1px dott=
ed rgb(200,200,200);border-bottom:1px dotted rgb(200,200,200)" cellspacing=
=3D"0">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td id=3D"gmail-m_-717118252188596494x_TextCell_15599226502130.898144284908=
8146" colspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-c=
ell">
<div id=3D"gmail-m_-717118252188596494LPRemovePreviewContainer_155992265021=
30.8567687510464137"></div>
<div id=3D"gmail-m_-717118252188596494LPTitle_15599226502130.98349568503859=
19" style=3D"color:rgb(47,144,196);font-weight:400;font-size:21px;font-fami=
ly:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,=
&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;line-heig=
ht:21px">
<a id=3D"gmail-m_-717118252188596494LPUrlAnchor_15599226502140.755183801871=
2569" href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettu=
s.com" style=3D"text-decoration:none" target=3D"_blank">USRP-users Info Pag=
e - Ettus</a></div>
<div id=3D"gmail-m_-717118252188596494LPMetadata_15599226502140.49855414275=
36597" style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:400=
;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,T=
ahoma,Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.ettus.com" id=3D"gmail-m_-717118252188596494LPlnk74=
9581" class=3D"gmail-m_-717118252188596494OWAAutoLink" target=3D"_blank">li=
sts.ettus.com</a></div>
<div id=3D"gmail-m_-717118252188596494LPDescription_15599226502150.36455856=
43269975" style=3D"display:block;color:rgb(102,102,102);font-weight:400;fon=
t-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahom=
a,Arial,sans-serif;font-size:14px;line-height:20px;max-height:100px;overflo=
w:hidden">
To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send=
 email to
<a href=3D"mailto:usrp-users@lists.ettus.com" id=3D"gmail-m_-71711825218859=
6494LPlnk519634" class=3D"gmail-m_-717118252188596494OWAAutoLink" target=3D=
"_blank">
usrp-users@lists.ettus.com</a>. You can subscribe to the list, or change yo=
ur existing subscription, in the sections below.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</div>
</blockquote>
<blockquote type=3D"cite">
<div dir=3D"ltr"><span>_______________________________________________</spa=
n><br>
<span>USRP-users mailing list</span><br>
<span><a href=3D"mailto:USRP-users@lists.ettus.com" id=3D"gmail-m_-71711825=
2188596494LPlnk365189" class=3D"gmail-m_-717118252188596494OWAAutoLink" tar=
get=3D"_blank">USRP-users@lists.ettus.com</a></span><br>
<span><a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.e=
ttus.com" id=3D"gmail-m_-717118252188596494LPlnk448224" class=3D"gmail-m_-7=
17118252188596494OWAAutoLink" target=3D"_blank">http://lists.ettus.com/mail=
man/listinfo/usrp-users_lists.ettus.com</a></span><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007d89c5058abe2665--


--===============2344591124581757934==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2344591124581757934==--

