Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B8235F3E
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2019 16:28:50 +0200 (CEST)
Received: from [::1] (port=43684 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hYWuH-0001on-CL; Wed, 05 Jun 2019 10:28:49 -0400
Received: from wout1-smtp.messagingengine.com ([64.147.123.24]:47021)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1hYWuE-0001hR-0C
 for usrp-users@lists.ettus.com; Wed, 05 Jun 2019 10:28:46 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id D389C516;
 Wed,  5 Jun 2019 10:28:04 -0400 (EDT)
Received: from imap8 ([10.202.2.58])
 by compute3.internal (MEProxy); Wed, 05 Jun 2019 10:28:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=t5O7X0
 XM3Y70kZu9JgikDnYUXDpUmAqioqNDVvOQ9hg=; b=1vrRmwTyPzjgL46j6eVgeE
 oZ8UY2VpCDo44p6jPddwy6zEvTm5xlbwEbpfiYSII6qTb9jYRbkXewLBIAlul2LZ
 IdIL9mE8KRW2CkjRQOmw1GWJfgsHbLHPj9A9KTDgbJ58tOUDMJxQavNCYbCKiTA8
 xRxC92X34NJi1DJMvQ4S2Y5lNuVfk9jwuvn6gu5EDoVCsA4OXrYq5BNssKQ4Iv+5
 X/rYfl6HeYrICVQZqVYr8/C3KLovDU4edqtgy2oHRAMMpV8/wWB6iRh46vNOyHgz
 zoLIRDUpLulH43Tlq0QHG1VHq2fwS1UA9btsSwBiYVyIW6eFXVIRTIQiV8XMybEw
 ==
X-ME-Sender: <xms:dNH3XBbVX5Z6RsiBhajnDm4XL3CrpQLiu5a_6bZ81TUjMZfJagLUTw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudegvddgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesrgdtreerreertdenucfhrhhomhepfdfoihgt
 hhgrvghlucffihgtkhgvnhhsfdcuoehmihgthhgrvghlrdguihgtkhgvnhhssegvthhtuh
 hsrdgtohhmqeenucffohhmrghinhepfhhirhguvghsrdifihhnpdgvthhtuhhsrdgtohhm
 necurfgrrhgrmhepmhgrihhlfhhrohhmpehmihgthhgrvghlrdguihgtkhgvnhhssegvth
 htuhhsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:dNH3XMpzrEUKqenXd3XFgNi2tMwloNMJg7Ct6RWqcMsKRqGuse7OHQ>
 <xmx:dNH3XO-1V0a_zfEy-elPUROiJJ3l_oK0zBzxCk1IhrsqYg7LpH12fA>
 <xmx:dNH3XD86IMq_N7cqG2HHbvENB-7m6BiGqt0SVdU1YCmSmvu3VT5Wag>
 <xmx:dNH3XKk_hj8nqQd2uWeUeYoR6H6ZLNLe4O5YuUGEBFkttSdaMVLlaQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 027CF520093; Wed,  5 Jun 2019 10:28:04 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-650-g74f8db0-fmstable-20190604v3
Mime-Version: 1.0
Message-Id: <bcf5854f-2fcc-497c-9c02-3732c40e26e6@www.fastmail.com>
In-Reply-To: <CAPLnO-LAEmXQJdoAGjN4vfEbzjY7gf4qkP5=vH=X6U=SFzrhbQ@mail.gmail.com>
References: <CAPLnO-LAEmXQJdoAGjN4vfEbzjY7gf4qkP5=vH=X6U=SFzrhbQ@mail.gmail.com>
Date: Wed, 05 Jun 2019 10:27:54 -0400
To: "Sneha vasan" <snehabvasan@gmail.com>,
 "USRP Users" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Filter Error
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============3746296821305110759=="
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

--===============3746296821305110759==
Content-Type: multipart/alternative;
 boundary=95a70557e959478999753620e845cc8b

--95a70557e959478999753620e845cc8b
Content-Type: text/plain

Hi Sneha - This is really a GR issue, not a USRP one. Thus, I'm replying for completion here & will reply to just the GR list after this. - MLD

On Wed, Jun 5, 2019, at 10:25 AM, Sneha vasan via USRP-users wrote:
> Hi everyone,
> 
> Can anybody guide me on this???.. I am using x310 with sampling rate of 1MHz. 
> 
> Traceback (most recent call last):
>  File "/home/sneha/My_waveform/past work/transmit.py", line 414, in <module>
>  main()
>  File "/home/sneha/My_waveform/past work/transmit.py", line 402, in main
>  tb = top_block_cls()
>  File "/home/sneha/My_waveform/past work/transmit.py", line 250, in __init__
>  callback=lambda ok, payload: self.digital_ofdm_demod_0.recv_pkt(ok, payload),
>  File "/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm.py", line 223, in __init__
>  options.log)
>  File "/usr/local/lib/python2.7/dist-packages/gnuradio/digital/ofdm_receiver.py", line 78, in __init__
>  filter.firdes.WIN_HAMMING) # filter type
>  File "/usr/local/lib/python2.7/dist-packages/gnuradio/filter/filter_swig.py", line 143, in low_pass
>  return _filter_swig.firdes_low_pass(*args, **kwargs)
> RuntimeError: firdes check failed: 0 < fa <= sampling_freq / 2
> 
> 
> Regards,
> sneha
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

--95a70557e959478999753620e845cc8b
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div style=3D"font-f=
amily:Arial;">Hi&nbsp;Sneha - This is really a GR issue, not a USRP one.=
 Thus, I'm replying for completion here &amp; will reply to just the GR =
list after this. - MLD<br></div><div style=3D"font-family:Arial;"><br></=
div><div>On Wed, Jun 5, 2019, at 10:25 AM, Sneha vasan via USRP-users wr=
ote:<br></div><blockquote type=3D"cite" id=3D"qt"><div dir=3D"ltr"><div>=
Hi everyone,<br></div><div><br></div><div>Can anybody guide me on this??=
?.. I am using x310 with sampling rate of 1MHz. <br></div><div><br></div=
><div>Traceback (most recent call last):<br></div><div style=3D"font-fam=
ily:Arial;">&nbsp; File "/home/sneha/My_waveform/past work/transmit.py",=
 line 414, in &lt;module&gt;<br></div><div style=3D"font-family:Arial;">=
&nbsp; &nbsp; main()<br></div><div style=3D"font-family:Arial;">&nbsp; F=
ile "/home/sneha/My_waveform/past work/transmit.py", line 402, in main<b=
r></div><div style=3D"font-family:Arial;">&nbsp; &nbsp; tb =3D top_block=
_cls()<br></div><div style=3D"font-family:Arial;">&nbsp; File "/home/sne=
ha/My_waveform/past work/transmit.py", line 250, in __init__<br></div><d=
iv style=3D"font-family:Arial;">&nbsp; &nbsp; callback=3Dlambda ok, payl=
oad: self.digital_ofdm_demod_0.recv_pkt(ok, payload),<br></div><div styl=
e=3D"font-family:Arial;">&nbsp; File "/usr/local/lib/python2.7/dist-pack=
ages/gnuradio/digital/ofdm.py", line 223, in __init__<br></div><div styl=
e=3D"font-family:Arial;">&nbsp; &nbsp; options.log)<br></div><div style=3D=
"font-family:Arial;">&nbsp; File "/usr/local/lib/python2.7/dist-packages=
/gnuradio/digital/ofdm_receiver.py", line 78, in __init__<br></div><div =
style=3D"font-family:Arial;">&nbsp; &nbsp; filter.firdes.WIN_HAMMING) &n=
bsp; # filter type<br></div><div style=3D"font-family:Arial;">&nbsp; Fil=
e "/usr/local/lib/python2.7/dist-packages/gnuradio/filter/filter_swig.py=
", line 143, in low_pass<br></div><div style=3D"font-family:Arial;">&nbs=
p; &nbsp; return _filter_swig.firdes_low_pass(*args, **kwargs)<br></div>=
<div>RuntimeError: firdes check failed: 0 &lt; fa &lt;=3D sampling_freq =
/ 2<br></div><div><br></div><div><br></div><div>Regards,<br></div><div>s=
neha<br></div></div><div>_______________________________________________=
<br></div><div>USRP-users mailing list<br></div><div>USRP-users@lists.et=
tus.com<br></div><div>http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com<br></div><div><br></div></blockquote><div style=3D"font=
-family:Arial;"><br></div></body></html>
--95a70557e959478999753620e845cc8b--


--===============3746296821305110759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3746296821305110759==--

