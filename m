Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B02288F7
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 21:16:09 +0200 (CEST)
Received: from [::1] (port=43214 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxkF-0001cx-8V; Tue, 21 Jul 2020 15:16:07 -0400
Received: from mail-pg1-f173.google.com ([209.85.215.173]:40823)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sspears@astranis.com>)
 id 1jxxkA-0001UE-QG
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 15:16:02 -0400
Received: by mail-pg1-f173.google.com with SMTP id n5so12372078pgf.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 12:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=astranis-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=jw5S39jg07+CWQ1+kIXVRtxbNixO6tct+14oGWExpXk=;
 b=YVYcmAckMIS2ewZg6G/M4/TM4xyGYsc5W3oZ80DK9ftXczg+R0uex51jbr6luevNB9
 C7TpN2B/kjpMWqbzopjHVzTWc+LkqIBu214LnMel3ONV148ab2X4rLHrbp7ID2VhD1TX
 A3535uyCXduKvfZUwqaf5ZcUiv98+aYfQSuX0eNUYbxoZ9ZXlpEBZMSPJJ9dSf37zKA4
 UApltXWvcEubUbHE2urPDsImw+c0WkKem2GfV8UWSuGpKOwc5ov8Cc4GkDLjtWSZzDK8
 BI1dJtyjxVfhvJtIgUW3vqdnfpqC2kgXupcabBwlWGrTSAZ2bU1cvbKUqZuO+d0INT9O
 cINQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jw5S39jg07+CWQ1+kIXVRtxbNixO6tct+14oGWExpXk=;
 b=Ag1roWmRGxzd4j+TpKuUoDSPn0ThuohjEpPJBblAej/PwMu5SUHqMq+nxN/7J813p+
 VcaKxMCcOZiZ8R3dQ/argj2blTA56y+TwRqKsG+9QepGB4ZAx42BC4SusA/ejqypRwi9
 Lo+jgRgGE8ueg4oEx8mlbvgGjqAxgGGzdhJcjIhM0xU8HVkIWzaYLKj+6UTQYKDm3f4P
 rvZcFv2A4I9IXc8/rVpyOEd9V8M0sRw74FDCgOSYf4Uth7SWbV3DF4dlE/LMU7A2rKbc
 JU2f96/Madg+EYVRXFQ3eVAqE5UVHU7xKaRO8ntCgbk3+MDmqvHL3dTuJdgpQtU0xR5B
 077Q==
X-Gm-Message-State: AOAM531xOzT68qNCl7s7LJZ2ottRgdctdv7YDXoiDzyWqI4/9D/+YrZ6
 Q3fo8hQXG/YI0Hz5SGSJ6OPry8HpwChQD6i0LPHG71oiBl4=
X-Google-Smtp-Source: ABdhPJzmWvBP5ushRf1SIYHSyWpTzlV3gLtvShX3JjRVux+fEl5WbNA1fVCYpbyqY2tH8ya6h+uDaQ6WYqJ030Q+b+8=
X-Received: by 2002:a62:29c6:: with SMTP id p189mr24753064pfp.55.1595358921402; 
 Tue, 21 Jul 2020 12:15:21 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 21 Jul 2020 12:15:10 -0700
Message-ID: <CAOqZ52a5gp6KREUZqht2oA7RVPNwxg3T7=y+Jb7Sr0f=pfXn_g@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] LFRX/LFTX daughterboard combination.
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
From: Stephen Spears via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Stephen Spears <sspears@astranis.com>
Content-Type: multipart/mixed; boundary="===============8833096999053151074=="
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

--===============8833096999053151074==
Content-Type: multipart/alternative; boundary="000000000000ccbfb805aaf87191"

--000000000000ccbfb805aaf87191
Content-Type: text/plain; charset="UTF-8"

Hi there,

I have a question about using the LFRX and LFTX daughterboards together. I
tried contacting Ettus through their website, but received no response, so
I thought I might find answers here instead. I need to do both RX and TX at
low frequencies (<30 MHz), but according to the Ettus website, there is no
combined TX/RX daughterboard for this range.
I am wondering if I need separate N200s for each board, or if there is a
way to fit both in a single N200. I ask this because the boards LFRX and
LFTX boards look significantly smaller on the website (
https://www.ettus.com/product-categories/rf-daughterboards/page/2/) than
the combined RX/TX boards. If any of you have experience using these
boards, please let me know whether using a single N200 is possible.

Thanks,
Stephen Spears

--000000000000ccbfb805aaf87191
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div>I have a question about using=
 the LFRX and LFTX daughterboards together. I tried contacting Ettus throug=
h their website, but received no response, so I thought I might find answer=
s here instead. I need to do both RX and TX at low frequencies (&lt;30 MHz)=
, but according to the Ettus website, there is no combined TX/RX daughterbo=
ard for this range.</div><div>I am wondering if I need separate N200s for e=
ach board, or if there is a way to fit both in a single N200. I ask this be=
cause the boards LFRX and LFTX boards look significantly smaller on the web=
site (<a href=3D"https://www.ettus.com/product-categories/rf-daughterboards=
/page/2/">https://www.ettus.com/product-categories/rf-daughterboards/page/2=
/</a>) than the combined RX/TX boards. If any of you have experience using =
these boards,=C2=A0please let me know whether using a single N200 is possib=
le.</div><div><br></div><div>Thanks,</div><div>Stephen Spears</div></div>

--000000000000ccbfb805aaf87191--


--===============8833096999053151074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8833096999053151074==--

