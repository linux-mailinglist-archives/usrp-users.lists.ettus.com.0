Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 103F234F411
	for <lists+usrp-users@lfdr.de>; Wed, 31 Mar 2021 00:15:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 51E9D383BC7
	for <lists+usrp-users@lfdr.de>; Tue, 30 Mar 2021 18:15:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="s1RsgvzC";
	dkim-atps=neutral
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 9F346383831
	for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 18:14:43 -0400 (EDT)
Received: by mail-oi1-f180.google.com with SMTP id n8so17998790oie.10
        for <usrp-users@lists.ettus.com>; Tue, 30 Mar 2021 15:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MXHpmtxd2IWg6PvVrhbwsC8UBCI44BSwPffm+FDuqVk=;
        b=s1RsgvzCSxdWe8bHX7TQBPChyue5HVLKHa5wGRD5OkBtCoat/lmG1uVPQ0M6BBR9WM
         aQFmZjwkaxBjOhnpJmfq5lEOpFsDeOI1FJo78T7ufaXxerIcxlua6ZOwISSqsGoUnf1y
         njxr5nDS5zvH0gPfpCrYs/b95bcVQ/SZ/o7Mh4oH8j8sr7+bsgmc8JPI/l9MdDmNY9d7
         iM4Bh81Mu4k1rT0VzZwF763ABZeRyJFvXLYWUqMd63l7oHUJXcoJFRgeNvef8H8V4z9o
         XvmWFugFG2au0y6UtScTDu8qLr9bxGjubOL1CZ26FK+0575EHzKHZ/29I+iWwkFbA2uE
         LKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MXHpmtxd2IWg6PvVrhbwsC8UBCI44BSwPffm+FDuqVk=;
        b=asx/ehlN6+CQXq9bsJzLFHdNirqVT/WUqXBnm7wy/APyKmgXujWr0ozBql3ADryYTc
         t4UgINLGGYWuGQSK1y6trP1FIep8SDHM/iV+dcp/algxFLG4UFH0DrJwkPTAFt0FKvVl
         ZHB7zUeS8aukzb4tkMLn7FL4qfwZ8WVr6u9yQD3B5uvRNJpjOY2rmNMUlIMKCbdlwXrL
         2sFvDEBFFvUpiLS/3PcXUfWP5vfXYun4+5ui9gaN6B5jUXWQQh5G3sJjfk7/TOLQYkh3
         XKLlT6ciaS+A5f6WMQvllKsBEvF8U3HaCE3HSSkCJoqPZ4HwkUCUDVjZuDz8c2VtcPV4
         RvVw==
X-Gm-Message-State: AOAM532QEzhvRp+qFgPi40n3AM5AaidzwN52TH6GMSOSnXxzxGszfFWM
	o/kbgb8gNzEb8WQtxhEBZOj1uOkngPNHoTmaGOFyAs98
X-Google-Smtp-Source: ABdhPJxc34rPYgdPjUDA3X7IjeE5251gbICaeS+seEhuxWI8CGY2htesitUJul7rENAfVRKqLOIURBdnanqdjNfFP4U=
X-Received: by 2002:a54:488a:: with SMTP id r10mr89475oic.23.1617142482970;
 Tue, 30 Mar 2021 15:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg@lists.ettus.com>
In-Reply-To: <aS3ZFFCSXczhyhpL1m0z0dNgzwZiuUMisOIAJPvHcg@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 30 Mar 2021 17:14:27 -0500
Message-ID: <CAFche=gCD=xB+Ccbe_6NP0FVGhDBS3Fi=j35ToBwTV9Z9sfETA@mail.gmail.com>
To: Julian Casallas <jcasallas2019@gmail.com>
Message-ID-Hash: NQCVBYQTPJ5ZE3G3JDUMN75OU7ZUHKVU
X-Message-ID-Hash: NQCVBYQTPJ5ZE3G3JDUMN75OU7ZUHKVU
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to control ctrlport_rst to reset gain RFNoC block from UHD layer?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NQCVBYQTPJ5ZE3G3JDUMN75OU7ZUHKVU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4532992657300421661=="

--===============4532992657300421661==
Content-Type: multipart/alternative; boundary="0000000000003fbc4b05bec853ab"

--0000000000003fbc4b05bec853ab
Content-Type: text/plain; charset="UTF-8"

If I remember correctly, there's currently no easy way for you to trigger
the ctrlport_rst manually. That reset is only asserted during RFNoC block
initialization. If you want to reset something at other times on demand
then I suggest creating a separate register for that purpose.

Thanks,

Wade

On Tue, Mar 30, 2021 at 3:04 PM <jcasallas2019@gmail.com> wrote:

> hi,
>
> Following the tutorial RFNoC 4 video, I noticed that it is using
> ctrlport_rst to set reg_user to the default value.
>
> My question is if I want to send a reset command from UHD layer, do I need
> to create another user register that handles the reset besides the user_reg
> that sets the gain? or I wonder if there is a internal register that can
> control the ctrlport_rst?
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003fbc4b05bec853ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>If I remember correctly, there&#39;s curre=
ntly no easy way for you to trigger the ctrlport_rst manually. That reset i=
s only asserted during RFNoC block initialization. If you want to reset som=
ething at other times on demand then I suggest creating a separate register=
 for that purpose. <br></div><div><br></div><div>Thanks,</div><div><br></di=
v><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Mar 30, 2021 at 3:04 PM &lt;<a href=3D"mailto:=
jcasallas2019@gmail.com">jcasallas2019@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><p>hi,</p><p>Following the =
tutorial RFNoC 4 video, I noticed that it is using ctrlport_rst to  set reg=
_user to the default value. </p><p>My question is if I want to send a reset=
 command from UHD layer, do I need to create another user register that han=
dles the reset besides the user_reg that sets the gain? or I wonder if ther=
e is a internal register that can control the ctrlport_rst?</p><p><br></p><=
p>Thanks</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003fbc4b05bec853ab--

--===============4532992657300421661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4532992657300421661==--
