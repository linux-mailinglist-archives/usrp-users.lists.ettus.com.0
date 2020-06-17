Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F4B1FD499
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2020 20:32:35 +0200 (CEST)
Received: from [::1] (port=49498 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlcrP-0004R3-Gv; Wed, 17 Jun 2020 14:32:31 -0400
Received: from mail-oo1-f50.google.com ([209.85.161.50]:35016)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jlcrL-0004NS-Ey
 for usrp-users@lists.ettus.com; Wed, 17 Jun 2020 14:32:27 -0400
Received: by mail-oo1-f50.google.com with SMTP id e12so621149oou.2
 for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2020 11:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=BEbU3qaz2Rb55anbHNxRGbVmd/Iv09D779OfHngMXPI=;
 b=VO6p6DimGEb+827BzWCSNY0/Lh8F69OwoylGd6TQ8rVFrwBFOftsYfsUzrl7bagYwK
 yNJ2JgDBjRCDrd8wJL2yZx3KE/hYn1IEb6rjJrC3AMLMxJq1bK0os8UoXqzkBNT3bduZ
 10UyODFrJYIqEUGWrv1pdALV7ApuCFSnKnXbVnP1HSd01OjOfa/wFpOZR5A1tqMkkDzB
 c1LHoVxrWovJiE3MC8hA7ZJh57M+MrBBbb8FY3T/V3nmTtuW5iSFlG6E+FW8YAqUeG0h
 kqSNQbDxhUCHN8htGtY9J4QRehkeiUuNM6NvjUYapr9eigSUomNN9qgvDTlk3xOssk0g
 vqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BEbU3qaz2Rb55anbHNxRGbVmd/Iv09D779OfHngMXPI=;
 b=LILKz3l5ShziZM/eDHQEGH+v692n3j32QvBG0ubMucvfM3I32Bit5VDIQkYmEWXH4l
 LbWNLxP97IsODGW3KwfyAdRd+mRzmWQbN0SCOIM+BwgtL0Y3sABHiDj4Ditp0Li40GLK
 ehqCeUpWDyE6ytKRqD2oDcq9ZADZUblINfYKIJWwVCa/7HuOMSfGB19lE3ZUJ/EIRzPh
 6hYARKlxhhTRE1O5lHfWmJaUktknDRVLRSxAXbqixHdObBoXURiG8J3L9hKBxdcvP30X
 b3KW4aWEJnEP24bu902QOYCOBAwyM30m5Rup8uorkRNzKeuVqO/9aBzjw86ilIx8sI65
 VT5g==
X-Gm-Message-State: AOAM53203Ei0bLC5uxGRL5kclYuBP/cONhJP7mca2tkG9y9Y2yV1RR9j
 vKr8cB+WZ7D7PJs5BBoKU44mTa2HH4W/0DhxKHjod8wUT9s=
X-Google-Smtp-Source: ABdhPJyZDY94LO7wWSmxd36AgkoVB8Lg6cW1fDIC+vwryDJzFP6h68Ui/i5Bw1pFNDHD5wB9aGJP1kkEhnl3f0oPaGo=
X-Received: by 2002:a4a:3947:: with SMTP id x7mr695271oog.55.1592418706486;
 Wed, 17 Jun 2020 11:31:46 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 13:31:35 -0500
Message-ID: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============5119516197700851803=="
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

--===============5119516197700851803==
Content-Type: multipart/alternative; boundary="000000000000558c5205a84bdf8a"

--000000000000558c5205a84bdf8a
Content-Type: text/plain; charset="UTF-8"

Dear All,

I have a question about the control of the TX/RX DSAs on the N310 platform.

I have a specific line-up for the RX and TX chains and I'd like to set
specific values to the TX and RX DSAs that are on the N310's daughter board
card. Are the control lines for the DSA's hooked up to SW for control via
UHD/MPM? From what I can tell, this is not a SW enabled feature on the
N310.

Looking through the FPGA code, the DSAs are hooked up to the
dsa_tx<1,2>_<a,b>_out_iob buffers. I've traced these lines as follows:

IO buffer => db_gpio_out wire in top module n3xx => n3xx_core => db_fe_core
=> db_control => db_gpio_atr (gpio_atr module).

Inside the gpio_atr verilog module, there are some registers related to the
ATR logic but not DSAs. There is logic to control the db_gpio via a
gpio_out_fab signal line, but I trace this signal and it goes back up to
the top level n3xx module as an unconnected wire.

Is there a connection that I am missing?

Thank you,
Colby

--000000000000558c5205a84bdf8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>Dear All,</div><div><br></div><div>I have =
a question about the control of the TX/RX DSAs on the N310 platform. <br></=
div><div><br></div><div>I have a specific line-up for the RX and TX chains =
and I&#39;d like to set specific values to the TX and RX DSAs that are on t=
he N310&#39;s daughter board card. Are the control lines for the DSA&#39;s =
hooked up to SW for control via UHD/MPM? From what I can tell, this is not =
a SW enabled feature on the N310. <br></div><div><br></div><div>Looking thr=
ough the FPGA code, the DSAs are hooked up to the dsa_tx&lt;1,2&gt;_&lt;a,b=
&gt;_out_iob buffers. I&#39;ve traced these lines as follows: <br></div><di=
v><br></div><div>IO buffer =3D&gt; db_gpio_out wire in top module n3xx =3D&=
gt; n3xx_core =3D&gt; db_fe_core =3D&gt; db_control =3D&gt; db_gpio_atr (gp=
io_atr module). <br></div><div><br></div><div>Inside the gpio_atr verilog m=
odule, there are some registers related to the ATR logic but not DSAs. Ther=
e is logic to control the db_gpio via a gpio_out_fab signal line, but I tra=
ce this signal and it goes back up to the top level n3xx module as an uncon=
nected wire. <br></div><div><br></div><div>Is there a connection that I am =
missing?</div><div><br></div><div>Thank you,</div><div>Colby<br></div></div=
>

--000000000000558c5205a84bdf8a--


--===============5119516197700851803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5119516197700851803==--

