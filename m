Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FE626E048
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 18:08:35 +0200 (CEST)
Received: from [::1] (port=34292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIwSY-00022R-5n; Thu, 17 Sep 2020 12:08:34 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:44047)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <emile.ghizzo@gmail.com>)
 id 1kIwSU-0001vA-58
 for usrp-users@lists.ettus.com; Thu, 17 Sep 2020 12:08:30 -0400
Received: by mail-ot1-f45.google.com with SMTP id a2so2378325otr.11
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 09:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bcP8V9EOkoZ7Oknzmlkuhgv33wxHYAqJmlcYikNCFmI=;
 b=fNTuAAGvAkY2ZMmsJi0AOWI6ag09gXjJd5LhlZIn5zG5nICaIksJfVsKOcSZMpIeMf
 FwXuqbLubXOgOFqD24ws/Xij1zwAEXtwCs38HtWm6kgGYL4u3+f353vsY0IoCjyWcx2M
 lcMDdIEvvZD4A2EC7Z6cPzd1IlkJ14DLcFY039WVAssF1htWsLYHmrVFSRdbGv+H05B0
 dOTmGOWMZix3qqlleIAHBSdYpKU7pjLjizfqDR06+t59zRPUU2l3LDfJQHT0AZ4syLzS
 V/1LeDWv0Y1eaxBJe9h5Z/uNUN/TccC49qrXR1/TShcMEML4EBQUvaI4hCPhrJ6azsl/
 TnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bcP8V9EOkoZ7Oknzmlkuhgv33wxHYAqJmlcYikNCFmI=;
 b=lwBQkJSuO3kHNEAiTfOdc9P3bssYw+USPyV9JUn8GwzPlcLg5uRxgCcKT6bf+wpxfT
 I9lceMpZgPyzQv0Ij3HYOe3ru+aqyuDG+Cytqjy0qn8hQ7V2HDPucoMkIXh1BnfwX5Jy
 Xk0tESjLjWUn/JdNHfL+Kd/y9U/FUDvC8kxC3e5Z0cmQRgn8K77kPXB6o+1H6tMUa83G
 UH5fA90DzJHg3CcA5w5WK3dwIcD0Ppc6HFQmihCb2Mx65gbF/2WR4m3H4DNAhWDO6i0G
 dJVrTC5gI28wiMOsXwdkh8qmOugJh5r9Lr6Ika3bhFMyB2503WPU07Usy6XfsLJOjeDV
 CRyg==
X-Gm-Message-State: AOAM533qpID5BknuT3nG+Dy7mBpic1Z3MPB76cvwFqalNK9IQLgZ8dmT
 IUte1CByCLKsBbdzqlcOPwTlEiuozweZOpv8BAIwkTpl1tAchQ==
X-Google-Smtp-Source: ABdhPJw4VeQXMIq13JKjjWuTYyqepYZNpt9YV6AjztADe7G82Bz1g8sf2dHz8oHLrNXJybCTno0HwusyrQzTnXubGiw=
X-Received: by 2002:a05:6830:110b:: with SMTP id
 w11mr19037740otq.109.1600358869113; 
 Thu, 17 Sep 2020 09:07:49 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 17 Sep 2020 18:07:38 +0200
Message-ID: <CAAPV=wADoHbqYfYpqFPF-4gunPs8afagXTvfNDTbQNVT44=ABQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP 2901 Burst mode Gnuradio-companion
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
From: Emile Ghizzo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Emile Ghizzo <emile.ghizzo@gmail.com>
Content-Type: multipart/mixed; boundary="===============0532560961792901219=="
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

--===============0532560961792901219==
Content-Type: multipart/alternative; boundary="000000000000e81fc705af8495ec"

--000000000000e81fc705af8495ec
Content-Type: text/plain; charset="UTF-8"

Hello,
I am trying to use the burst mode with Gnuradio-companion to generate a
signal,

I use the SOB/EOB tags with 3 "Tags strobe" blocks, for the tx_time tag, if
i understand correctly, i need to give the usrp time. How can I have this
value please ?
I try with the functions  uhd.usrp_block.get_time_now() and
uhd.time_spec_t.get_full_time(), but i need to call the uhd_usrp_sink class
created with the block I use, but i don't find how ....

Moreover i would like to know if the burst mode can work on gnuradio during
almost 10s without underflows ?

Thank in advance for your help,
Emile

--000000000000e81fc705af8495ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, <br></div><div>I am trying to use the burst mo=
de with Gnuradio-companion to generate a signal,</div><div><br></div><div>I=
 use the SOB/EOB tags with 3 &quot;Tags strobe&quot; blocks, for the tx_tim=
e tag, if i understand correctly, i need to give the usrp time. How can I h=
ave this value please ?</div><div> I try with the functions=C2=A0 uhd.usrp_=
block.get_time_now() and uhd.time_spec_t.get_full_time(), but i need to cal=
l the uhd_usrp_sink class created with the block I use, but i don&#39;t fin=
d how ....</div><div><br></div><div>Moreover i would like to know if the bu=
rst mode can work on gnuradio during almost 10s without underflows ? <br></=
div><div><br></div><div>Thank in advance for your help, <br></div><div>Emil=
e<br></div><div><h2 class=3D"gmail-memtitle"><br>

</h2>

 </div><div><br></div></div>

--000000000000e81fc705af8495ec--


--===============0532560961792901219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0532560961792901219==--

