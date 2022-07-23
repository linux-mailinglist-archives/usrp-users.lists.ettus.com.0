Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1757F101
	for <lists+usrp-users@lfdr.de>; Sat, 23 Jul 2022 20:53:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 54172380FD7
	for <lists+usrp-users@lfdr.de>; Sat, 23 Jul 2022 14:53:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658602404; bh=1LqJ5VyOrAhPHHmXqCYTFx+Ugq+00nHJIsoBYVj01tE=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=O9dOWnU/2TFmfOsJI0w1YE/iAfBRZo3pqxxwjQs7u9bSVvHp1BB4OZARETAZCQ7Ly
	 DSv/5YTG9HNz+V+9jZoHXnBLXU4DY+Mnqcjv+UEwp6RVdBUiXEoFLLu4k29bvmRSCp
	 avl6DKncKtBUbLusinx1gUnh6PSFp/C78ybXjMoYBwUZu1HVgWvdvjGBKY0FdJd8Ao
	 vYHasU76yduJSkaWt60GUjLu186fw457HGCRwZ0CS0m5Cp0aqJ8X5+gkkcjs70jN2q
	 49zjzsd0v1D5ibqN5YT6McR1+w72fRdcLjwjk7X08JKKPbRdAySQ/TObzt5DteH5Cs
	 ohCsjpF+H9Lvg==
Received: from sender4-of-o52.zoho.com (sender4-of-o52.zoho.com [136.143.188.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 6FD61380DE1
	for <usrp-users@lists.ettus.com>; Sat, 23 Jul 2022 14:51:19 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1658602276; cv=none;
	d=zohomail.com; s=zohoarc;
	b=hIxm4/BatBLHDU464sMquQQ3z67yJbKnnS85BkAkT/Uz+AI+y/wQ5AWvdP+7hz2dDsYhdBRjwnSu4eUFte7C6YSRP+bJYzi4lh3DJIbGxxL9kGGWT601XvcmjSLVXI8dVr5XJNMCgTt+ielBzx4xep1gMb5sbkNcoV9L7XJn1pM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1658602276; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
	bh=De1PUy8ePFqOk8IPbEQcdMFWD6tyTBfLswpzLoCP+cs=;
	b=TJkfPlatQrSbPP0LGnHGveyf/KzfuR3CKH8ByzWj1YUY6UbQ2ZRX5TrX/QfH8eEYdZj+mFZhv0qLe/O2+mvijipYV9gOSfSx2b9v0kk2FzocqeVy12UEwY6DouD/0EGv82fWkRcByMAMZH4SzrPR1HrFiNgJAuwYOHloT5qOU+M=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	spf=pass  smtp.mailfrom=jgallegos@uberasch.com;
	dmarc=pass header.from=<jgallegos@uberasch.com>
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1658602270696183.90620543256034; Sat, 23 Jul 2022 11:51:10 -0700 (PDT)
Date: Sat, 23 Jul 2022 11:51:10 -0700
From: Jack Gallegos <jgallegos@uberasch.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-Id: <1822c662fc0.d998538b2404736.1026667478394397727@uberasch.com>
In-Reply-To: <ee6a7ef7-3d28-f6c4-3203-1f38c289a2f3@gmail.com>
References: <182274231d9.1031c912c2324005.5412430506593081403@uberasch.com> <ee6a7ef7-3d28-f6c4-3203-1f38c289a2f3@gmail.com>
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Message-ID-Hash: BCH3R4SY5EN3JRXJSFR2UI6HQFG7YCUP
X-Message-ID-Hash: BCH3R4SY5EN3JRXJSFR2UI6HQFG7YCUP
X-MailFrom: jgallegos@uberasch.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Stream command not executing on PPS edge
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BCH3R4SY5EN3JRXJSFR2UI6HQFG7YCUP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8727222534028157876=="

--===============8727222534028157876==
Content-Type: multipart/alternative;
	boundary="----=_Part_7746064_1872464421.1658602270656"

------=_Part_7746064_1872464421.1658602270656
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I figured out the issue. I had forgot to set_time_source to the external PP=
S. Although, I guess I should have figured that when I unplugged the ext PP=
S to check its frequency and the PPS LED kept blinking...



Now it works :)



Jack Gallegos








---- On Fri, 22 Jul 2022 18:22:18 -0700 Marcus D. Leech <patchvonbraun@gmai=
l.com> wrote ---



On 2022-07-22 14:53, Jack Gallegos
      wrote:



Which version of UHD? Can you share the actual code you're using to
    set-up streaming, and setting of the clocks?
=20
=20
=20
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com=20
I am trying to receive samples from a transmitter that
          sends a data burst every second starting on rising edge of GPS
          PPS with my X310. My program structure works like this:



initialize USRP -> create stream command as
          MODE_NUM_SAMPS_AND_DONE and stream_now=3Dfalse -> set time on
          USRP at next pps to 0.0 seconds -> wait 2 seconds in thread
          for supposed issue on PPS taking time to update -> set
          stream command time_spec to be time of last PPS + 1.0 seconds
          (so in theory, on another PPS edge) -> issue stream command
          -> receive samples



The ref and pps sources are from external gpsdo and I can
          tell they are selected because the PPS LED is blinking and the
          REF LED is solid and external sensors are checked for lock
          during initialization.



However, when I run this program, I am finding that the
          USRP is not sampling at the start of the PPS, but at seemingly
          random times. For example, looking at the received samples,
          the transmitted pulse that I know for certain is starting with
          the PPS is being received at 0.1, 0.2, 0.3 seconds, etc.



How can I be sure that the USRP knows to sample directly on
          the PPS edge?





-Jack Gallegos=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
------=_Part_7746064_1872464421.1658602270656
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"><html><head>=
<meta content=3D"text/html;charset=3DUTF-8" http-equiv=3D"Content-Type"></h=
ead><body ><div style=3D"font-family: Verdana, Arial, Helvetica, sans-serif=
; font-size: 10pt;"><div>I figured out the issue. I had forgot to set_time_=
source to the external PPS. Although, I guess I should have figured that wh=
en I unplugged the ext PPS to check its frequency and the PPS LED kept blin=
king...<br></div><div><br></div><div>Now it works :)<br></div><div><br></di=
v><div id=3D"Zm-_Id_-Sgn" data-zbluepencil-ignore=3D"true" data-sigid=3D"42=
69381000000033001">Jack Gallegos<div><br></div></div><div><br></div><div cl=
ass=3D"zmail_extra_hr" style=3D"border-top: 1px solid rgb(204, 204, 204); h=
eight: 0px; margin-top: 10px; margin-bottom: 10px; line-height: 0px;"><br><=
/div><div class=3D"zmail_extra" data-zbluepencil-ignore=3D"true"><div><br><=
/div><div id=3D"Zm-_Id_-Sgn1">---- On Fri, 22 Jul 2022 18:22:18 -0700 <b>Ma=
rcus D. Leech &lt;patchvonbraun@gmail.com&gt;</b> wrote ---<br></div><div><=
br></div><blockquote style=3D"margin: 0px;"><div><div class=3D"x_-342270890=
moz-cite-prefix">On 2022-07-22 14:53, Jack Gallegos
      wrote:<br></div><div id=3D"zmail_block"><br></div>Which version of UH=
D? Can you share the actual code you're using to
    set-up streaming, and setting of the clocks?<br> <br> <br> </div>______=
_________________________________________<br>USRP-users mailing list -- usr=
p-users@lists.ettus.com <br>To unsubscribe send an email to usrp-users-leav=
e@lists.ettus.com <br><blockquote><div style=3D"font-family: Verdana, Arial=
, Helvetica, sans-serif;font-size: 10.0pt;"><div>I am trying to receive sam=
ples from a transmitter that
          sends a data burst every second starting on rising edge of GPS
          PPS with my X310. My program structure works like this:<br></div>=
<div><br></div><div>initialize USRP -&gt; create stream command as
          MODE_NUM_SAMPS_AND_DONE and stream_now=3Dfalse -&gt; set time on
          USRP at next pps to 0.0 seconds -&gt; wait 2 seconds in thread
          for supposed issue on PPS taking time to update -&gt; set
          stream command time_spec to be time of last PPS + 1.0 seconds
          (so in theory, on another PPS edge) -&gt; issue stream command
          -&gt; receive samples<br></div><div><br></div><div>The ref and pp=
s sources are from external gpsdo and I can
          tell they are selected because the PPS LED is blinking and the
          REF LED is solid and external sensors are checked for lock
          during initialization.<br></div><div><br></div><div>However, when=
 I run this program, I am finding that the
          USRP is not sampling at the start of the PPS, but at seemingly
          random times. For example, looking at the received samples,
          the transmitted pulse that I know for certain is starting with
          the PPS is being received at 0.1, 0.2, 0.3 seconds, etc.<br></div=
><div><br></div><div>How can I be sure that the USRP knows to sample direct=
ly on
          the PPS edge?<br></div><div><br></div><div><br></div><div class=
=3D"x_-342270890zmail_signature_below"><div id=3D""><div>-Jack Gallegos&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; <br></div><div><br></div></div></div><br></div><=
/blockquote></blockquote></div><div><br></div></div><br></body></html>
------=_Part_7746064_1872464421.1658602270656--

--===============8727222534028157876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8727222534028157876==--
