Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 681AD364DB5
	for <lists+usrp-users@lfdr.de>; Tue, 20 Apr 2021 00:35:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A8C98384D19
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 18:35:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RvLcj9zy";
	dkim-atps=neutral
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id B78E5384CF7
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 18:35:01 -0400 (EDT)
Received: by mail-qt1-f179.google.com with SMTP id z25so4658907qtn.8
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 15:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=W2FuJFrN1MZlvuFsL6foQk6/IGNwbo8hUBVQ8n8ynZ8=;
        b=RvLcj9zyXJFPsqRVHGuVr2lL3fHJ8DnepcIJi8HPLEBuC/7R1LTAhjuL1++/qOBzgX
         JtvF5AAkwiAl+gXQxPCzDTU5DwRLaJ6xOSA67CYBq7uUvMf+65m5HGIIX1eMyYfbsZbL
         xP4ibPL1VSJtB/mJdc24cpqO3ehg6wyvYv2kgAkN7enbamHhH+mo9UCaMMYEI0GDxAgu
         uCiCWbYkHTMTUXrEKIaaBpDHPaMNehBcshJ09pkPdvU4UnqK1LDNgEFkKOyEwqwxqPLp
         2CfY935zhQkXkksEP4xnkv6RkCFtnvMv5FZbeXLekOyBqoKj5hjCacn/qgZ4sCqT/crv
         S00A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=W2FuJFrN1MZlvuFsL6foQk6/IGNwbo8hUBVQ8n8ynZ8=;
        b=FAIcaVdce83NLUNkzvBr8X7KZmWCoUTj/9L27X7hgNlfUFQrxWGkJM2iKmxSiU8Eue
         FpfuvqyNZeTdi4kTtP7iFVNaaXmjTl2j1yL12vo1kO33PSqa5maPywISxAQfY36Bazeq
         VtRKw4cV1bRIk6YNyNlEes/yHmROg+v9ieaYpz4y8VVHZSyjp3WL4yubaNzlGQiyd1JZ
         Wcxph6n8a7++BGoWAyX/9aJt7in2ZKL96fMLe9p2gwXAc5pr/4TT3lgruZbIVbQmJtME
         PfqbYGEvEBXuYI88nqLalp/2PLDHmDPCDlFNtKEm3w0D1Q19dxDya05TBFqz8ZLsxhVP
         /OzA==
X-Gm-Message-State: AOAM533kDAfg15XYgYRhKcgecH+uMLEGhAcpGLBMXQXtJwFIUBw8tqT2
	008p8kRZrSKgC3CHV9XxWfbpFBOgKtP59Q==
X-Google-Smtp-Source: ABdhPJzMhQC7IJXUkO2ys7bGNBSkT7PTrnZGhLg/1E6rsT7BVGBNZkItdkymi4C4SJYrM14Mz7ah+Q==
X-Received: by 2002:a05:622a:3cc:: with SMTP id k12mr14111347qtx.233.1618871700958;
        Mon, 19 Apr 2021 15:35:00 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id m16sm10727515qkm.100.2021.04.19.15.35.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 15:35:00 -0700 (PDT)
Message-ID: <607E0593.1040807@gmail.com>
Date: Mon, 19 Apr 2021 18:34:59 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
References: <8BD61B25-5BDD-4864-8C30-B1C133F513F2@gmail.com> <C7A28B54-D688-46B6-ACB1-A5739D949AFE@gmail.com> <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
In-Reply-To: <CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=A2swFYgsQ@mail.gmail.com>
Message-ID-Hash: WTL42N5MQYK7WFANYGZJEUIPTTKWOX7A
X-Message-ID-Hash: WTL42N5MQYK7WFANYGZJEUIPTTKWOX7A
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD dual-install issue
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WTL42N5MQYK7WFANYGZJEUIPTTKWOX7A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5000005274259691178=="

This is a multi-part message in MIME format.
--===============5000005274259691178==
Content-Type: multipart/alternative;
 boundary="------------040102000504000001040908"

This is a multi-part message in MIME format.
--------------040102000504000001040908
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/19/2021 06:21 PM, Brendan Horsfield wrote:
> Importing uhd in Python 3: 
> /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_64.egg/uhd.cpython-36m-x86_64-linux-gnu.so 
> <http://uhd.cpython-36m-x86_64-linux-gnu.so>
>
> (Note that this is an alternative Python UHD module written by 
> Christian Hahn, which I have been evaluating for the last few days.)
>
> Trying to import uhd in Python 2 (which I never use) returns an error:
>
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
>   File "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line 
> 10, in <module>
>   File "/usr/local/lib/python2.7/dist-packages/uhd/types.py", line 10, 
> in <module>
>     # "__iter__" and "next" attributes instead.
> ImportError: cannot import name libpyuhd
>
> Brendan.
>
Given that gr-uhd wants a module called "uhd" to exist, and GR uses 
gr-uhd, i'm not sure what will happen with the
   name-space pollution that will result.



--------------040102000504000001040908
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/19/2021 06:21 PM, Brendan
      Horsfield wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CALNMZ8WiRaZbvALNifxMPBpPPYuZ1-eFRHZ0A-8E=3DA2swFYgsQ@mail.gm=
ail.com"
      type=3D"cite">
      <div dir=3D"ltr">Importing uhd in Python 3:=C2=A0
        /usr/local/lib/python3.6/dist-packages/uhd-1.1.0-py3.6-linux-x86_=
64.egg/<a
          moz-do-not-send=3D"true"
          href=3D"http://uhd.cpython-36m-x86_64-linux-gnu.so">uhd.cpython=
-36m-x86_64-linux-gnu.so</a>
        <div><br>
        </div>
        <div>(Note that this is an alternative Python UHD module written
          by Christian Hahn, which I have been evaluating for the last
          few days.)=C2=A0 =C2=A0</div>
        <div><br>
        </div>
        <div>Trying to import uhd in Python 2 (which I never use)
          returns an error:</div>
        <div><br>
        </div>
        <div>Traceback (most recent call last):<br>
          =C2=A0 File "&lt;stdin&gt;", line 1, in &lt;module&gt;<br>
          =C2=A0 File
          "/usr/local/lib/python2.7/dist-packages/uhd/__init__.py", line
          10, in &lt;module&gt;<br>
          =C2=A0 File "/usr/local/lib/python2.7/dist-packages/uhd/types.p=
y",
          line 10, in &lt;module&gt;<br>
          =C2=A0 =C2=A0 # "__iter__" and "next" attributes instead.<br>
          ImportError: cannot import name libpyuhd<br>
        </div>
        <div><br>
        </div>
        <div>Brendan.</div>
        <br>
      </div>
    </blockquote>
    Given that gr-uhd wants a module called "uhd" to exist, and GR uses
    gr-uhd, i'm not sure what will happen with the<br>
    =C2=A0 name-space pollution that will result.<br>
    <br>
    <br>
  </body>
</html>

--------------040102000504000001040908--

--===============5000005274259691178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5000005274259691178==--
