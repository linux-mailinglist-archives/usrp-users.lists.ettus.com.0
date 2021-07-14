Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E68C63C85B9
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 16:01:59 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB497384503
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jul 2021 10:01:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="msZQNUfB";
	dkim-atps=neutral
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5EA013842F7
	for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 10:01:10 -0400 (EDT)
Received: by mail-qk1-f172.google.com with SMTP id j184so1622280qkd.6
        for <usrp-users@lists.ettus.com>; Wed, 14 Jul 2021 07:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=2vvCKV9c3RTaazj+gIIxdpIZHkKUCwwiX/SEVdbyTZQ=;
        b=msZQNUfB+3je5hHVUuiOz1Zq+hnJHXKblLwe8NnRXsrhfty0XQDIEtQlsiDTmbKaRK
         wXI2L9cZ8CEfJQLLyr1OIWuFp/ta3hNdFvvDPTyXHbUKSJS8QbCC6bITwsuPW0kjwfwp
         azC3/5QIsc2T3ePXfOIYgsYQR91TOPCIQE0KjzidPOMGirDcYd/HXxb6dqBEPI+kNcv9
         pxPw6J9zZxCMBJmbpetR24yjGkcGqxdsLEffdBQdUlVSwA13fe+d+ImrcuprLoXSeoJO
         N0C6RiOF/j7els6PWU6kr+Q2m48hU77lBmtaB2ahdjlxuYFajxQWPdClsmJN9TTC9SHB
         0Afw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=2vvCKV9c3RTaazj+gIIxdpIZHkKUCwwiX/SEVdbyTZQ=;
        b=fX/lS1CnfoYcEOPrwFLiXPRjdvJTkgpAslYFEi55Os+N5O6hJpJs/Idfszlj6T0dIg
         N5W4mBEibOaguZ34Tu5PZc1FOW8i4d6WdjyKUopBPP5M6hHxZF/jol8p7cqE8FJE4KKy
         IKHhmCVvC+y7Sos3No8QgUDQ42RByEeGFji0Ri/gjMVbhtVptRB2Lfp7abvX4U1lVVAW
         WzQ2e1SjboMTsSqVqj+QbrLhJ/12RRp6pwqYT+NakoCkdyFvra3YHb3uBOzZRWWawXlS
         3uzbZ7WlPftw7yfxfqepTKoYG43ospvH2VqWThgWDUfMre46friP6/VMVh7HjgJuSoLb
         Tavg==
X-Gm-Message-State: AOAM533qREzWTp0fsTpaswKHZJG4DDfXrFrD96PSC8USol+fTZzMh/SF
	ohO/w6+YZVmVbi9hiOGdKh57qyoBfZcSQw==
X-Google-Smtp-Source: ABdhPJzGWv42OWRNpB5U1XRAuIr4zAdivVpS0M+CqJBzPvCrLxd5g0HfEaNelC3fUQ9r4pZtw1H3mA==
X-Received: by 2002:a37:b2c3:: with SMTP id b186mr9993533qkf.172.1626271269653;
        Wed, 14 Jul 2021 07:01:09 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id d16sm785338qtj.69.2021.07.14.07.01.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jul 2021 07:01:09 -0700 (PDT)
Message-ID: <60EEEE24.3040203@gmail.com>
Date: Wed, 14 Jul 2021 10:01:08 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Armin Ghani <aghani@cttc.es>,
 Jonathon Pendlum <jonathon.pendlum@ettus.com>
References: <0f01b8f9-0390-462f-f650-3e108ced0508@cttc.es> <60E843EE.2020702@gmail.com> <de086712-0b2c-bd0a-2403-a21e3d60195c@cttc.es> <60E87031.4000103@gmail.com> <eb828814-823b-709a-244b-bebb223c17ad@cttc.es> <60E8719E.7070206@gmail.com> <CAL7q81tOT3aQRf9BOHb9A-9KNCU1rMG5eku2c2UOFh7zoL3HUg@mail.gmail.com> <8d17e3e1-48c0-f896-1075-45a9e82a3d1e@cttc.es>
In-Reply-To: <8d17e3e1-48c0-f896-1075-45a9e82a3d1e@cttc.es>
Message-ID-Hash: 2CCER2DB4MASSTAZFNTLKBDV6GHJMIC2
X-Message-ID-Hash: 2CCER2DB4MASSTAZFNTLKBDV6GHJMIC2
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multi USRP TX configuration in GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2CCER2DB4MASSTAZFNTLKBDV6GHJMIC2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7214400387113890003=="

This is a multi-part message in MIME format.
--===============7214400387113890003==
Content-Type: multipart/alternative;
 boundary="------------080005060206070207030006"

This is a multi-part message in MIME format.
--------------080005060206070207030006
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/14/2021 04:32 AM, Armin Ghani wrote:
>
> Dear Marcus
>
> I didnt get your point about set sample rate to 10Msps with the same 
> bandwidth. Would you explain more?
>
> I know that L character at console means starving for samples but what 
> I really dont understand is that why it comes up when skip_dram 
> argument sets to one with the same sample rate though?
>
> Regards.
>
>
I just meant that you could interpolate your signal up to a higher 
sample rate to see if that made the "L" go away.  There were 
historically problems
   with lower sample rates on X310 in certain configurations.

I don't know why there's a dependency on skip_dram, since I'm not one of 
the designers.



--------------080005060206070207030006
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 07/14/2021 04:32 AM, Armin Ghani
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:8d17e3e1-48c0-f896-1075-45a9e82a3d1e@cttc.es"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      <p>Dear Marcus</p>
      <p>I didnt get your point about set sample rate to 10Msps with the
        same bandwidth. Would you explain more?</p>
      <p>I know that L character at console means starving for samples
        but what I really dont understand is that why it comes up when
        skip_dram argument sets to one with the same sample rate though?<=
/p>
      <p>Regards.<br>
      </p>
      <br>
    </blockquote>
    I just meant that you could interpolate your signal up to a higher
    sample rate to see if that made the "L" go away.=C2=A0 There were
    historically problems<br>
    =C2=A0 with lower sample rates on X310 in certain configurations.<br>
    <br>
    I don't know why there's a dependency on skip_dram, since I'm not
    one of the designers.<br>
    <br>
    <br>
  </body>
</html>

--------------080005060206070207030006--

--===============7214400387113890003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7214400387113890003==--
