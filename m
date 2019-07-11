Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E82416616F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jul 2019 00:00:08 +0200 (CEST)
Received: from [::1] (port=46828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hlh6g-0005lb-Rq; Thu, 11 Jul 2019 18:00:02 -0400
Received: from mail-yw1-f49.google.com ([209.85.161.49]:38329)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <mikedon1@gmail.com>) id 1hlh6d-0005g3-BP
 for usrp-users@lists.ettus.com; Thu, 11 Jul 2019 17:59:59 -0400
Received: by mail-yw1-f49.google.com with SMTP id f187so4443407ywa.5
 for <usrp-users@lists.ettus.com>; Thu, 11 Jul 2019 14:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=iug4wfPngQ/weQZxChiELUzkyRl41ncHX0uMVgkG2ng=;
 b=cQDRcGUWdSQHHONPMaD4qsx589+qHKn2bL5h8C3nr3rEh/rrKBKtnIh+QK4DEYqoEv
 yzxSF9V3aWMkNOPMgSsx7o9YApchIiaihYj/Wqd4rlK+/mwo0skF8sJxRFUlLVpV5/TQ
 d4EjH+IkXgbSZiLmJ9ssRSBQqp2mZHYZWN3fAswJGCNmTPGWTRLxQ0r+tpVfoL/hkDO/
 xlCTYiNlptrSZHCoG522yaftugBf4IhMLeqJZQHl+3BZJb9w7poKmxcshMJ2a9A862Fa
 IUhZDHRRUScG5pETbHcF1OCxTpnKBqex+H+hgWKVLMM+vdUTMgNf9lHUgE+cUFCaWmTA
 0zIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iug4wfPngQ/weQZxChiELUzkyRl41ncHX0uMVgkG2ng=;
 b=SxA95mAvrW8xD+Kz/c7TXaByX6BNROBix9FIH4Itq9aMGhyp24vjAujsnIjO9gP0w2
 CPMe98KkxbODs6uZ3AjcyuDWDXkgS+GoPwTu7ddShqkUGOIoiR6bgZFgLOpreo+M6GGn
 tpvC1mGb62QHufmfHsv/evmRYO906ZAYldgTrXBeETZv0rcnY3Ue5lNy1UOm/NM/Y4pE
 Qn2gcSDKsUochnEYlilwVK6i8b71YmZC45KDk/8vpK+FKIPtWwzyaX/ZFRPHkHliJAJk
 Y4FmR27tWRN98mybeiAAW4YexCqxqS9Bioqlfi2M55QJfacwxeR3U2R2ruoJIMN2Nla4
 Ek+Q==
X-Gm-Message-State: APjAAAWQiNXEsGG+0qjrmYoxHUP04apcU/Nd/aKoAEVxqE+vKWsTG+BM
 pkFP23zJWHgJryVVJX7Tbww77oPn6gY5UrhRXGG/pYZc
X-Google-Smtp-Source: APXvYqwiMP7hwW999DsnaPSt2IkHRr+7Feife2qM4+JvFbU9XLvor8883gdJdIxzlStPfU5YtaMLAXXRNg8D1tKhZ94=
X-Received: by 2002:a81:8287:: with SMTP id s129mr3508380ywf.453.1562882356452; 
 Thu, 11 Jul 2019 14:59:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:9982:0:0:0:0:0 with HTTP; Thu, 11 Jul 2019 14:59:15
 -0700 (PDT)
Date: Thu, 11 Jul 2019 17:59:15 -0400
Message-ID: <CAFTvvjP6Xe9nWChVNeVU9wOD+HA5dwTW8wi8LfP4f=yaHZZPWQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rx error code: 1
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
From: Michael Don via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Don <mikedon1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

It looks like rx error code: 1 means UHD isn't getting samples from
the SDR.  I thought it was some sort of error that the UHD sink was
configured wrong in gnuradio.  I'm using a custom FPGA image that only
transmits samples on certain conditions.  I discovered I had a bad
connector, so the second E312 wasn't working.

On 7/11/19, Michael Don <mikedon1@gmail.com> wrote:
> I have 2 E312 units.  On one I have a gnuradio script that works fine.
> I cloned the sd card from the first E312, and put it on the second
> E12, and am getting the following error:
>
> WARN: USRP Source Block caught rx error code: 1
>
> Is this some sort of hardware problem, since the 2 systems have
> identical software?  Anyone know what rx error code: 1 means?  Any
> suggestions on how to fix this?
>
> Also, while playing around to try to fix this I'm pretty sure I set
> the rx gain to 50 on one of the units, and got the "rx error code: 1"
> error, and reduced the gain, and the error went away.  On the unit
> that is currently failing, I set the gain to 0 and still get the
> error.  The unit that's working has the gain set to 25.  I thought the
> max gain of the E312 was 76, not sure what's going on here.
>
> -Mike
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
