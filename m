Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2054186C
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2019 00:52:14 +0200 (CEST)
Received: from [::1] (port=60198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hapcd-0006Eo-Oq; Tue, 11 Jun 2019 18:52:07 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:37852)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hapca-0006Af-GC
 for usrp-users@lists.ettus.com; Tue, 11 Jun 2019 18:52:04 -0400
Received: by mail-qk1-f176.google.com with SMTP id d15so8785536qkl.4
 for <usrp-users@lists.ettus.com>; Tue, 11 Jun 2019 15:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Idxq7QeP1QkBh+GmEXl7ykrXJ5a2ugCErdqdrzPzo24=;
 b=d5S1jwnV4k9JWBPGPS0b/PZqIYKvJGWmpcP/lNTqLtcvKwCE25Wc2jiUhlbK2sDSz2
 r7b8zeCIgoVtX5A+2/u+deC/nkYYFSxe3iXpFL/gtY7s/KzQYVWMteQdtbJhn0glK2z5
 DnCAQwdP3PaRFJP3CS7m+zwuYi9Yel+GfyKAIbI8wNg76jYCa1u0jKy4FbrQvnUKChXg
 c2vheSk1DWRt2m2h6vqtliKLuLoia1msbN2kZTCvTjS8hKJbLrxwcSl5XStKVNeLBrgB
 6vbJSyQif0lU9MKVS32Yp90ahBCFzVcvmggHWaT/BGTgZkZMpyIqFg2asr3vc6MEcKD7
 ZoGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Idxq7QeP1QkBh+GmEXl7ykrXJ5a2ugCErdqdrzPzo24=;
 b=QK+82MA8H6nBj5AirdPyPIOS7CQsIl4Whe08r0s2A0UmQEuGmf3bmLBMVZe2geXJW8
 dntwVo1x9ixvCXbh5fB2UAx85yowLEciB+0splcgKpV1lOS+wpoIsAfSgvWMLSUvsgkU
 6+1MVA7+LM9TFhKzE2EaOML0aHUdoQlpPM9zFBXrVIi/bG9I1B0K8gAH/RCdsB1k5lcr
 EnnXMT+H2GBRhV1eVHrEne9kXdYrlO7hpnB8OSQTBhKEsLk8hjOAooEoBYf9ktYAeGmy
 SxlmdDnlAOu2I8MtMXHGu32qOqbFQl5ahs24jinbeJhYFTqq5mW8jLkEpZSu/dQIS1GG
 wgpA==
X-Gm-Message-State: APjAAAVZtSprxiqYHwK4+5xLcO6qf/0/H4jrIZ/HR+sAWwR8HL2cW7Tn
 gk9IQ8ZwTTRwmPQDpDYOY9xrwr9GYPY=
X-Google-Smtp-Source: APXvYqxncN75TTKFHEatuo6Y6WIU+31BStIaLi+uxxVl40LfUmCkXaZZHz/Vle3lpvGoje5PmEa0fw==
X-Received: by 2002:ae9:de83:: with SMTP id s125mr4751423qkf.115.1560293483932; 
 Tue, 11 Jun 2019 15:51:23 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id d141sm6947119qke.3.2019.06.11.15.51.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 15:51:23 -0700 (PDT)
Message-ID: <5D00306A.6090002@gmail.com>
Date: Tue, 11 Jun 2019 18:51:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Eamon Heaney <heaneye@vt.edu>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <CAAmPie9bAGtA0ncV+5H=W3KN3=3kgyYrBeYR-APSRuC_v=Ob=Q@mail.gmail.com>
In-Reply-To: <CAAmPie9bAGtA0ncV+5H=W3KN3=3kgyYrBeYR-APSRuC_v=Ob=Q@mail.gmail.com>
Subject: Re: [USRP-users] [Discuss-gnuradio] USRP source gain vs osmocom
 source gain?
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 06/11/2019 06:33 PM, Eamon Heaney wrote:
> Hey all,
>
> I'm trying to turn the wifi receiver flowgraph in this repo 
> (https://github.com/bastibl/gr-ieee802-11/blob/maint-3.8/examples/wifi_rx.grc) 
> into one that will work with the HackRF.
>
> The example uses a USRP source, with a normalized gain of .75. I'm not 
> sure how to translate that into parameters for the osmocom source, 
> which has 3 gain options: RF gain, IF gain, and BB gain, all in dB.
>
> I tried setting the RF gain = 20log(.75) = -2.49877, but that just 
> resulted in mangled packets.
>
> Any suggestions?
>
> -- 
Different hardware has different controls -- the whole "normalized gain" 
thing is a USRP concept that isn't replicated in other hardware as far
   as I know.  Now, "normalized gain" just means normalized relative to 
the maximum gain setting of the underlying hardware, so your
   conversion to dB is completely wrong.  In a "normalized gain" 
scenario, 1.0 represents the maximum gain setting, and 0 represents the
   minimum gain setting delivered by the *actual hardware*.  Various 
USRP hardware types have various gain-control ranges--the
   "normalized gain" concept is just UHDs way to providing an 
abstraction away from having to know the valid range for the hardware at 
hand.

Just like frequency, sample-rate, and analog bandwidth are 
hardware-specific, so too is gain.

Usually, the RF gain control will be implemented by most hardware 
supported by osmocom, and some will also implement IF and BB gain
   controls.

End of the day, you will have to deal with this for each hardware type.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
