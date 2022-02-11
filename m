Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4210E4B28E3
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 16:15:43 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29A1C385495
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 10:15:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XfqrgOkV";
	dkim-atps=neutral
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 6661738523D
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 10:14:47 -0500 (EST)
Received: by mail-vk1-f179.google.com with SMTP id d27so5150011vkn.5
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 07:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X28DOqfgyUV1E7Iku6zep/BM29+w3mPkeaxj/gTMUOI=;
        b=XfqrgOkV4U49Mbfc602+OoAUqyX9QBCFmzMqVZ1aYD345BzL8zfDJJfcIXfuyhD1xc
         GTVGG8kTNdq5r7Ta17DG4IE+6HCUtvYJgcqWZyug+skwS9QiBYdYPFGThAyN0BEm5Cf4
         czvsKoghXm6E1Qc9wwvP9Geq0UVTck9TW04up64S8ReTE0hSNL/NRQ/1nF/SwlLX/QNC
         Rg6j0MmTC7T7FXjx3w1AMj4ZN1+iWGQ63dTClQbjp5vK6ZeuGgpUOC52TtEj09LIipGe
         fHdslZvLphtcESX6l+ZLSOETubYIPKJL8WqjGEF1EwTomnU3f1EuzMwNXJqPcPfZcTCn
         SJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X28DOqfgyUV1E7Iku6zep/BM29+w3mPkeaxj/gTMUOI=;
        b=m56Vp4gPDXnnqtK+in3vIzWBHfeMKDlSJl/coVLzitse4Ken5hWszGgQap+gBuco/G
         0vq6Hx0ZqiuXlTIL/fV6QDA/8vlGBMZ5aN6jh+EQx7pQH5o2/B5/sIL6n/2b0EtHkAdk
         pu7iBN695B/ccPfTE5qfPlrK9wOPIvph4gFSfAa9aMkXQENMQH57E7Uz7JUvvi151ErD
         JJrbb8IPLNT3OorVJTTXW6pslPBR5QcSHZ8IVXF97pSLmE0dCV6RovdLA7OwgbOJK/gf
         E4Ma6pFfwAMAMdbAmZ4P4hh1d2kWYzB+QiPhZkJQIQIy0fqFIPym/1G1MMsvb6+TW2HT
         nEXg==
X-Gm-Message-State: AOAM533Sp2FylbOpeq+4UX94KUarQYi+797+43orHg8kvsUWzChD53IU
	QFlZqLS/+6VUemjmGKYFp42++QyyJrNvCSBLJ6WBH/OV
X-Google-Smtp-Source: ABdhPJwROggCTGpacctnqh5+BtbcoT6uPVU8hU4IW8yilqibdEwW8oLkju5g/a5R2uQ8o4ngRTf+mkQwEmMXr9tYxK8=
X-Received: by 2002:a05:6122:1811:: with SMTP id ay17mr602252vkb.2.1644592486817;
 Fri, 11 Feb 2022 07:14:46 -0800 (PST)
MIME-Version: 1.0
References: <CAOucfAPKzeN=Ei1g6J4fOL+KcWff8e99afBHUG5w7kZx5xnpQA@mail.gmail.com>
 <CAEXYVK623aF24R2wT_ZWcTXUrjcSv9E4=H3fA1tt2SLanij6eA@mail.gmail.com>
In-Reply-To: <CAEXYVK623aF24R2wT_ZWcTXUrjcSv9E4=H3fA1tt2SLanij6eA@mail.gmail.com>
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Fri, 11 Feb 2022 12:14:35 -0300
Message-ID: <CAOucfAOtFXa1o230VnLB_84T11Jm_0wY-fPFnyXOA28bX-em5w@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: AFARQT63PUFWQNUNY7O4UD2LF56BHEUY
X-Message-ID-Hash: AFARQT63PUFWQNUNY7O4UD2LF56BHEUY
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Could not find block with Noc-ID ...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AFARQT63PUFWQNUNY7O4UD2LF56BHEUY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0069569726572468880=="

--===============0069569726572468880==
Content-Type: multipart/alternative; boundary="000000000000fa20b605d7bf8624"

--000000000000fa20b605d7bf8624
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your prompt response (and to Rob for his response).

You are right, my mistake, it is a warning. Besides its nature, it prevents
the gnu-radio flowgraph from working at all, and prevents uhd_usrp_probe
from displaying the correct block name.

Setting up the environment variable worked just fine, but I'm wondering how
I should include two OOT blocks if I've to set the env variable to one path=
?

Thank you.
Lautaro.



El vie, 11 feb 2022 a la(s) 11:43, Brian Padalino (bpadalino@gmail.com)
escribi=C3=B3:

> On Fri, Feb 11, 2022 at 8:16 AM Lautaro Lorenzen <
> lorenzen.lautaro@gmail.com> wrote:
>
>> Hi everyone,
>>
>> I'm trying to follow the RFNoC 4 workshop and I've come up with an error
>> when I'm trying to load the image to an ettus 312. I think my environmen=
t
>> is set up correctly but any help would be appreciated.
>> It is worth noting that I'm trying to use RFNoC with gnu-radio.
>> I've also seen an email from 2020 but I'm not sure how I could put my
>> custom block "in-tree" to solve this issue.
>>
>> The error:
>> [WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
>> 0x501de012, 0xffff
>>
>
> This is a warning, not an error.
>
> To alleviate this, you need to set the UHD_MODULE_PATH environment
> variable to the path where your out-of-tree library for this block is
> located.
>
> Brian
>

--000000000000fa20b605d7bf8624
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Thanks for your prompt response (and to Rob for his res=
ponse). <br></div><div class=3D"gmail_default" style=3D"font-family:arial,h=
elvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:arial,helvetica,sans-serif">You are right, my mistake, it is a warnin=
g. Besides its nature, it prevents the gnu-radio flowgraph from working at =
all, and prevents uhd_usrp_probe from displaying the correct block name. <b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif">Setting up the environment variable worked just fin=
e, but I&#39;m wondering how I should include two OOT blocks if I&#39;ve to=
 set the env variable to one path?</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">Thank you.</div><d=
iv class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"=
>Lautaro.<br></div><div class=3D"gmail_default" style=3D"font-family:arial,=
helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-=
family:arial,helvetica,sans-serif"> <br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 11 feb 2022 a la(s) 1=
1:43, Brian Padalino (<a href=3D"mailto:bpadalino@gmail.com">bpadalino@gmai=
l.com</a>) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 11, 2022 at 8:16 A=
M Lautaro Lorenzen &lt;<a href=3D"mailto:lorenzen.lautaro@gmail.com" target=
=3D"_blank">lorenzen.lautaro@gmail.com</a>&gt; wrote:<br></div><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-serif">Hi everyone,=
</div><div style=3D"font-family:arial,helvetica,sans-serif"><br></div><div =
style=3D"font-family:arial,helvetica,sans-serif">I&#39;m trying to follow t=
he RFNoC 4 workshop and I&#39;ve come up with an error when I&#39;m trying =
to load the image to an ettus 312. I think my environment is set up correct=
ly but any help would be appreciated. <br></div><div style=3D"font-family:a=
rial,helvetica,sans-serif">It is worth noting that I&#39;m trying to use RF=
NoC with gnu-radio.</div><div style=3D"font-family:arial,helvetica,sans-ser=
if">I&#39;ve also seen an email from 2020 but I&#39;m not sure how I could =
put my custom block &quot;in-tree&quot; to solve this issue.<br></div><div =
style=3D"font-family:arial,helvetica,sans-serif"><br></div><div style=3D"fo=
nt-family:arial,helvetica,sans-serif">The error:</div><div style=3D"font-fa=
mily:arial,helvetica,sans-serif">[WARNING] [RFNOC::BLOCK_FACTORY] Could not=
 find block with Noc-ID 0x501de012, 0xffff</div></div></blockquote><div><br=
></div><div>This is a warning, not an error.</div><div><br></div><div>To al=
leviate this, you need to set the=C2=A0UHD_MODULE_PATH environment variable=
 to the path where your out-of-tree library for this block is located.</div=
><div><br></div><div>Brian</div></div></div>
</blockquote></div>

--000000000000fa20b605d7bf8624--

--===============0069569726572468880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0069569726572468880==--
