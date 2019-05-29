Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 545962E30E
	for <lists+usrp-users@lfdr.de>; Wed, 29 May 2019 19:20:26 +0200 (CEST)
Received: from [::1] (port=42476 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hW2FP-0002wj-Cn; Wed, 29 May 2019 13:20:19 -0400
Received: from mail-oi1-f178.google.com ([209.85.167.178]:34566)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1hW2FK-0002po-UU
 for usrp-users@lists.ettus.com; Wed, 29 May 2019 13:20:14 -0400
Received: by mail-oi1-f178.google.com with SMTP id u64so2731625oib.1
 for <usrp-users@lists.ettus.com>; Wed, 29 May 2019 10:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=z8PiAll/deue1FLZyy7YWFr3nlJid6z9xosqx+2OTgQ=;
 b=I1nuVdWB3qgPLOl4WmPahALUBsUstRh7RrDFx1hJwG2m3Liuw7uGUbXW5baGwq9OCa
 FG/X61dazuqUA9GXgkmng9YhZ5gh2aTFtrfgNN4Qpy0xValQ3RrtHOJwjb+ZKED0pFsJ
 J2P8Cqa7XIH6RcJsQFH36Awj6wIWSa9z6bjETHuRZlidd7jWjc85aXIiOP505IOenRdh
 CElppapeqh3wqIUxRJC1GcoUQodPMfBph+DgmsXrmPrAUMK8SdJ9H5KLnltcBI8nmd8Z
 YWTg5nrJ0eTPq4sU+eP3HWn7YYOlkq0fqdjK8dWRL6hByF5m+S0nAftVWaXgYb7mITHx
 3rpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=z8PiAll/deue1FLZyy7YWFr3nlJid6z9xosqx+2OTgQ=;
 b=uJsoqLcQto4T0DFlXro7SH3Ap70xQ85c6KXKZfFXP7rvnrpXAop/lMF3yEqk4lddZJ
 O1cIbO9trl6hOViEz0OKggjjWloHamRPcHrTBFUiTuAu0VIHKvGhjDWP4fv1xV6uxP1k
 nVapcNWwgTryH3Tj4vRnEvmyXl5bgOMCknWeScdtiVn3BMHQDlpw4t9ZdArKJZ0vxSjM
 yNUyIcDh0GG5p5nMa4MegEWPVhTeRomdC86j2AjegMqm8zPCf9QKXy+uSkLW7LNH2zhd
 zWQiCkdSJzYMa5yLOnc3jZDG1RcbjDyxlbDvHZ/VsbXFcS7N2uZGHWMW2OzLvf9wqpJD
 6nWQ==
X-Gm-Message-State: APjAAAX9VQ7w0jFJBdUTvuoL7KGnN5AtXJWJTkUWJBv3eU85VSr/jw/e
 lIUs0KZij9LW372HJI4pSxxM6QyJbh/QNICTQVPIWtPkeKs=
X-Google-Smtp-Source: APXvYqwRrItSudRdTEzU3AR87Gf4swPLrQsOYmvP3IMygRfpOkjzoN5ar08Uxmik+Q9e1F7xPBaf0WZcJpTPEOGgjkU=
X-Received: by 2002:aca:e044:: with SMTP id x65mr7018136oig.70.1559150373937; 
 Wed, 29 May 2019 10:19:33 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 29 May 2019 13:19:23 -0400
Message-ID: <CAB__hTQcJ7178QKtSu6fiZE=63bVRKKeC12=ABSQ1nfc9O28xA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] finding the blocks on RFNoC FPGA image
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2310596280675537602=="
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

--===============2310596280675537602==
Content-Type: multipart/alternative; boundary="000000000000312fb8058a09fc8f"

--000000000000312fb8058a09fc8f
Content-Type: text/plain; charset="UTF-8"

Hi,
I need to determine which blocks are on a given FPGA image (using UHD).  I
had hoped to use the device3->find_blocks() function for this purpose, but
this function seems to require that you know the names of the blocks in
advance (because of the corresponding block_id_t::match() function that is
called).

I was able to implement the code below in order to enumerate the blocks,
but this implementation doesn't seem like a great solution to me since it
requires me to know the property tree structure.  I had hoped to find a
function that would not require me to know the tree.

Please let me know if there is a better method.  If not, is there a chance
Ettus would implement one or alternatively modify the existing
device3->find_blocks() such that you don't need to know the names of the
blocks in advance?
Rob

std::vector<uhd::rfnoc::block_id_t> blk_ids;
for (size_t mb = 0; mb<usrp->get_num_mboards(); mb++) {
  uhd::fs_path path("/mboards/" + std::to_string(mb) + "/xbar/");
  std::vector<std::string> names =
    usrp->get_device3()->get_tree()->list(path);
  for (auto name: names) {
    uhd::rfnoc::block_id_t id(name);
    id.set_device_no(mb);
    blk_ids.push_back(id);
  }
}

--000000000000312fb8058a09fc8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I need to determine which blocks are on a given FP=
GA image (using UHD).=C2=A0 I had hoped to use the device3-&gt;find_blocks(=
) function for this purpose, but this function seems to require that you kn=
ow the names of the blocks in advance (because of the corresponding block_i=
d_t::match() function that is called).=C2=A0</div><div><br></div><div>I was=
 able to implement the code below in order to enumerate the blocks, but thi=
s implementation doesn&#39;t seem like a great solution to me since it requ=
ires me to know the property tree structure.=C2=A0 I had hoped to find a fu=
nction that would not require me to know the tree.</div><div><br></div><div=
>Please let me know if there is a better method.=C2=A0 If not, is there a c=
hance Ettus would implement one or alternatively modify the existing device=
3-&gt;find_blocks() such that you don&#39;t need to know the names of the b=
locks in advance?</div><div>Rob</div><div><br></div><div><font face=3D"cour=
ier new, monospace">std::vector&lt;uhd::rfnoc::block_id_t&gt; blk_ids;<br>	=
		for (size_t mb =3D 0; mb&lt;usrp-&gt;get_num_mboards(); mb++) {<br>=C2=A0=
 uhd::fs_path path(&quot;/mboards/&quot; + std::to_string(mb) + &quot;/xbar=
/&quot;);<br>=C2=A0 std::vector&lt;std::string&gt; names =3D <br>=C2=A0 =C2=
=A0 usrp-&gt;get_device3()-&gt;get_tree()-&gt;list(path);<br>=C2=A0 for (au=
to name: names) {<br>=C2=A0 =C2=A0 uhd::rfnoc::block_id_t id(name);<br>=C2=
=A0 =C2=A0 id.set_device_no(mb);<br>=C2=A0 =C2=A0 blk_ids.push_back(id);<br=
>=C2=A0 }<br>			}</font><br></div></div>

--000000000000312fb8058a09fc8f--


--===============2310596280675537602==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2310596280675537602==--

