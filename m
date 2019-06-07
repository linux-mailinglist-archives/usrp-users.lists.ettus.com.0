Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCED39182
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2019 18:02:29 +0200 (CEST)
Received: from [::1] (port=41602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hZHK0-0000ze-LS; Fri, 07 Jun 2019 12:02:28 -0400
Received: from mail-it1-f174.google.com ([209.85.166.174]:36882)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hZHJw-0000qR-RF
 for usrp-users@lists.ettus.com; Fri, 07 Jun 2019 12:02:24 -0400
Received: by mail-it1-f174.google.com with SMTP id x22so3506598itl.2
 for <usrp-users@lists.ettus.com>; Fri, 07 Jun 2019 09:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=kxTLV06q8oItyCiCfNNywK5QyWV4ZCHezKhWK8HFodw=;
 b=st1fSK8OiI1i3CabQ5g2e+I/E5goFSsXX1TETn0i31RIPMhFm42M4/dHFKagNydKz6
 IP5Y36i7XxfLX/+zRBltqgFNLMUC5r/siXzVquW/wopdAyT0OBybvNqwEyf6g3BNBEn6
 dEaFQN98zOQLxJr96y44Be+ZyDdAveeET43kRL6RmwcW7zWX1VcCGUzW1JHrO0d2UiRN
 aZxor+dPEn/XJNDux+6FiVCubypkuQaP4n1aJnXfJIEZqdq+FqMVPf3YPPB+dYO6zlAy
 tW0BhS0p4374+KGbPQtcnixvGfJO+gIdpVxIsBTvXohP118QES8Qg4wj8+tCNv5oehc5
 OsuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=kxTLV06q8oItyCiCfNNywK5QyWV4ZCHezKhWK8HFodw=;
 b=VPBO3OAg6cDoTwSJJuaTMomeukx9tbR7Q5BHhEiat3lhj9OJkaqrNXR5C6iU4Oo31r
 i+9dnh/YYq/rqEuZMunAbR7yRUq79rKusnfZRquEmsvsXRX6uhcp1Y54t35e/8h3qD8w
 o4SEAFMLEUe5ahIu8Ut0/dpHo3M48a59tt4lmnksbmJcaeJOPn06H5xk9vjaU6o1iQG0
 kWJTdaBrk9WnjDwYPgXv3zBAxVIrXBCIlUOqpdkybEhcFgpjkWJDRXq6QIGW6aj3WsUr
 qs44ArbgiDRFRflkTvVs67472xMItovsvPUQfHuFR8QUE06XE28SsWq1A9U5hrbvQCbm
 ZUnw==
X-Gm-Message-State: APjAAAXDdCZlugstAawDmMhgWzg0evgpKTGh6fdoYg2S6jfLFN6E/wNV
 MIfGwnal1Gvjw8Ri57tevmHyX78smNs=
X-Google-Smtp-Source: APXvYqykYcQEDndHpHs9tu/a5unT1ssp+Kik+YA+qnVKPZ27CMzqq2FB3SuM4ECFj8UuZ0JuacCp+A==
X-Received: by 2002:a02:70d6:: with SMTP id
 f205mr21483616jac.138.1559923302582; 
 Fri, 07 Jun 2019 09:01:42 -0700 (PDT)
Received: from [192.168.0.250] ([24.146.32.18])
 by smtp.gmail.com with ESMTPSA id b142sm979319itb.28.2019.06.07.09.01.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Jun 2019 09:01:41 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
Date: Fri, 7 Jun 2019 12:01:40 -0400
Message-Id: <6406FA1A-8520-4DE3-914C-00634F2AF194@gmail.com>
References: <BL0PR12MB2340FE595800AEE988A97927AF100@BL0PR12MB2340.namprd12.prod.outlook.com>
 <97385c33-0632-9752-41ab-9190d3b59bb3@balister.org>
 <BL0PR12MB23407505B7EFEE3FAF0A34BBAF100@BL0PR12MB2340.namprd12.prod.outlook.com>
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: Philip Balister <philip@balister.org>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8181643348585834867=="
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


--===============8181643348585834867==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-1493EA93-AC6C-488B-8281-7EB576CA0B5C
Content-Transfer-Encoding: 7bit


--Apple-Mail-1493EA93-AC6C-488B-8281-7EB576CA0B5C
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Check the MAC addresses.=20

I know that on some ARM platforms that has to be programmed in at boot and p=
erhaps these system images have it set to the same value.=20

Sent from my iPhone

> On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users <usrp-users@lis=
ts.ettus.com> wrote:
>=20
> Philip,
>=20
> They have unique addresses (10.95 and 10.45).  It is really weird that whe=
n I am on the E310, and set the ip-addr to himself, that he would even look o=
ff the device....
>=20
> They both have hostnames and they are not similar to each other at all.
>=20
>=20
> From: Philip Balister <philip@balister.org>
> Sent: Friday, June 7, 2019 11:10 AM
> To: Jason Matusiak; Ettus Mail List
> Subject: Re: [USRP-users] E320 hogging the network
> =20
> Check each ones ip address, likely by running ifconfig. In the back of
> my mind, I recall something like this in the E100 days. Do they have the
> same hostname?
>=20
> Philip
>=20
> On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:
> > It looks like I am misunderstanding something with how the E320 handles t=
he network.
> >=20
> >=20
> > I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of t=
he default 10.2).  I can ssh into it and things seem to run fine in embedded=
 mode.
> >=20
> >=20
> > Now, if I ssh onto an E312 that is on the same network (IP 10.95), it do=
esn't work right as long as the E320 is plugged in.  When I do a probe or ru=
n any other UHD-type commands on the E310, it seems to always talk to the E3=
20 first and it screws everything up.  It doesn't matter if I put the E310's=
 address into the command or not, the E320 responds.  I also remember seeing=
 this occur when I was on my host machine running commands (the E320 bullied=
 its way into being the main attraction).
> >=20
> >=20
> > My current work-around is to unplug Ethernet from the E320, run my comma=
nd on the E310, plug back into the E320, then run its command.  This seems t=
o allow things to work as I intended, but is obviously not ideal and is fair=
ly difficult to do when devices are remote.
> >=20
> >=20
> > So what am I missing here?
> >=20
> >=20
> >=20
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> USRP-users Info Page - Ettus
> lists.ettus.com
> To see the collection of prior postings to the list, visit the USRP-users A=
rchives.. Using USRP-users: To post a message to all the list members, send e=
mail to usrp-users@lists.ettus.com. You can subscribe to the list, or change=
 your existing subscription, in the sections below.
>=20
>=20
> >=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-1493EA93-AC6C-488B-8281-7EB576CA0B5C
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=utf-8"></head><body dir="auto">Check the MAC addresses.&nbsp;<div><br></div><div>I know that on some ARM platforms that has to be programmed in at boot and perhaps these system images have it set to the same value.&nbsp;<br><br><div id="AppleMailSignature" dir="ltr">Sent from my iPhone</div><div dir="ltr"><br>On Jun 7, 2019, at 11:52 AM, Jason Matusiak via USRP-users &lt;<a href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><blockquote type="cite"><div dir="ltr">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<div id="divtagdefaultwrapper" style="font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif;" dir="ltr">
<p style="margin-top:0;margin-bottom:0">Philip,</p>
<p style="margin-top:0;margin-bottom:0"><br>
</p>
<p style="margin-top:0;margin-bottom:0">They have unique addresses (10.95 and 10.45).&nbsp; It is really weird that when I am on the E310, and set the ip-addr to himself, that he would even look off the device....</p>
<p style="margin-top:0;margin-bottom:0"><br>
</p>
<p style="margin-top:0;margin-bottom:0">They both have hostnames and they are not similar to each other at all.</p>
<p style="margin-top:0;margin-bottom:0"><br>
</p>
<br>
<div style="color: rgb(0, 0, 0);">
<hr style="display:inline-block;width:98%" tabindex="-1">
<div id="divRplyFwdMsg" dir="ltr"><font face="Calibri, sans-serif" style="font-size:11pt" color="#000000"><b>From:</b> Philip Balister &lt;<a href="mailto:philip@balister.org">philip@balister.org</a>&gt;<br>
<b>Sent:</b> Friday, June 7, 2019 11:10 AM<br>
<b>To:</b> Jason Matusiak; Ettus Mail List<br>
<b>Subject:</b> Re: [USRP-users] E320 hogging the network</font>
<div>&nbsp;</div>
</div>
<div class="BodyFragment"><font size="2"><span style="font-size:11pt;">
<div class="PlainText">Check each ones ip address, likely by running ifconfig. In the back of<br>
my mind, I recall something like this in the E100 days. Do they have the<br>
same hostname?<br>
<br>
Philip<br>
<br>
On 06/07/2019 07:37 AM, Jason Matusiak via USRP-users wrote:<br>
&gt; It looks like I am misunderstanding something with how the E320 handles the network.<br>
&gt; <br>
&gt; <br>
&gt; I have my E320 on my subnet with the sfp0 assigned to 10.45 (instead of the default 10.2).&nbsp; I can ssh into it and things seem to run fine in embedded mode.<br>
&gt; <br>
&gt; <br>
&gt; Now, if I ssh onto an E312 that is on the same network (IP 10.95), it doesn't work right as long as the E320 is plugged in.&nbsp; When I do a probe or run any other UHD-type commands on the E310, it seems to always talk to the E320 first and it screws everything
 up.&nbsp; It doesn't matter if I put the E310's address into the command or not, the E320 responds.&nbsp; I also remember seeing this occur when I was on my host machine running commands (the E320 bullied its way into being the main attraction).<br>
&gt; <br>
&gt; <br>
&gt; My current work-around is to unplug Ethernet from the E320, run my command on the E310, plug back into the E320, then run its command.&nbsp; This seems to allow things to work as I intended, but is obviously not ideal and is fairly difficult to do when devices
 are remote.<br>
&gt; <br>
&gt; <br>
&gt; So what am I missing here?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
&gt; <a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" id="LPlnk737468" class="OWAAutoLink" previewremoved="true">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
<div id="LPBorder_GT_15599226502150.13089060943563968" style="margin-bottom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id="LPContainer_15599226502120.04792581257573203" role="presentation" cellspacing="0" style="width: 90%; background-color: rgb(255, 255, 255); position: relative; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: 20px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted rgb(200, 200, 200);">
<tbody>
<tr valign="top" style="border-spacing: 0px;">
<td id="TextCell_15599226502130.8981442849088146" colspan="2" style="vertical-align: top; position: relative; padding: 0px; display: table-cell;">
<div id="LPRemovePreviewContainer_15599226502130.8567687510464137"></div>
<div id="LPTitle_15599226502130.9834956850385919" style="top: 0px; color: rgb(47, 144, 196); font-weight: 400; font-size: 21px; font-family: wf_segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-height: 21px;">
<a id="LPUrlAnchor_15599226502140.7551838018712569" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank" style="text-decoration: none;">USRP-users Info Page - Ettus</a></div>
<div id="LPMetadata_15599226502140.4985541427536597" style="margin: 10px 0px 16px; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; font-size: 14px; line-height: 14px;">
<a href="http://lists.ettus.com">lists.ettus.com</a></div>
<div id="LPDescription_15599226502150.3645585643269975" style="display: block; color: rgb(102, 102, 102); font-weight: 400; font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: hidden;">
To see the collection of prior postings to the list, visit the USRP-users Archives.. Using USRP-users: To post a message to all the list members, send email to <a href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>. You can subscribe to the list, or change your existing subscription,
 in the sections below.</div>
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


</div></blockquote><blockquote type="cite"><div dir="ltr"><span>_______________________________________________</span><br><span>USRP-users mailing list</span><br><span><a href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br><span><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></div></body></html>
--Apple-Mail-1493EA93-AC6C-488B-8281-7EB576CA0B5C--


--===============8181643348585834867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8181643348585834867==--

