Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDsFLz0Cl2k8tgIAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:29:49 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3505A15E97F
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 13:29:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 764C33809B3
	for <lists+usrp-users@lfdr.de>; Thu, 19 Feb 2026 07:29:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1771504188; bh=xYs38UJiwiYSxktqya1MBnbPe4AHWo0y9AiBC/Rf0oo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=qXgkQU3zNQYwPVdPjRAR9k++1s7QDYoHKM4UrwB/R31sqS1rybYG0FxFQPCDc7Ydi
	 ai5SeKBrByka9NJSrZ1SwjMT7V9hU0fuVCvIO6gcvITZTFsvzFpf5aX4jQa7DIy8Av
	 oeT83hYInSUHiLLRSPH7n3NbJETvNy6y90zirYEbb4r/ANCBeZIn3hK401seoF6rJo
	 sDuBEaYMExPBi+6xQfHXUHv5Ie2EojLv4p9VFZlme4ESCGKysdx58Xv4NUXh4nP8tV
	 JK02+W0HbLRMr7sobp+iiCtsPt6HH5jENesQA6v1RV8s4aMo8tq4Oi6EKih9AuQm1z
	 4rHebO0oROxiw==
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id B2B31385022
	for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 07:29:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="z3Ugq4KB";
	dkim-atps=neutral
Received: by mail-qt1-f176.google.com with SMTP id d75a77b69052e-502a789834fso6776581cf.2
        for <usrp-users@lists.ettus.com>; Thu, 19 Feb 2026 04:29:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771504150; cv=none;
        d=google.com; s=arc-20240605;
        b=XtFmtNTD06YS9Tk3Vus+amuf9JfYNbs9mrf94Bp3oUgzGduQzYMMnWOBgseTK9hFt4
         nZZ2hZTsnTkEYYXw6AHpyVN5HCQsGSbwXvMYs6WjzOlqKuStUan31n2PnL4FipCsRaAo
         JCCr3pyrBPfkLPUyk+pp8A5n7u/gWXA6xYukbWc3/bWknlllSiBwNtAPqrNXtwwEOSDr
         qzK2zgKgI4S4TS+BSCfUH1N4i7JqD9EbOH9yD7TkuZ3dD0OfwEEItrrnnzys7llO06rQ
         FgAJnCjfVO5IziQywx9j1p5E+LqyiNnuId6AGbabyT/MU7qUXX+Lc9e1JUiKpEjB7k/p
         jozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xoHfbFF4DYK64Lm2gfibWtIRUdyrmQQRPk+epjkppv4=;
        fh=FSZu4BnIE0I4LMh8lHMxEs6ejzmmIluSh8pttcY3y7Q=;
        b=dDGYjHF1Bew56X3ue/ffp2YWLWHAqivtfqNUe48nFPyZmtXx8fyuFDDGr0WjWhmtX1
         M5/YEKacCiKS0pVIdmLnDqFyiR0hXqY7fBjrir8gcKa07CI89+g/dc6NJue2kXv3rIMb
         KGAhaORly5hg/FXI3MmDll9YIZ7u4mbXgPT0/C+Req0uGJJWN84gPfpp+rH2rb+nPjBE
         1KEkiVd1Ruau0SnmrWdU/Tni/CS9J+Q4NUMBO4h2ym2hVYIU+fuMBrCdkr+SCwb9I320
         AlQthOGEzzCLKMDwymjOyUcHYvYEfhtrv+ZsABy0SOHhXZJ6f+/DoIOPks1AYszrmgll
         mWmA==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1771504150; x=1772108950; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xoHfbFF4DYK64Lm2gfibWtIRUdyrmQQRPk+epjkppv4=;
        b=z3Ugq4KBCavk0JJmFveiNd4sUZM9ijv4+TdAr3WsoQnC7lwn1BRxPjSpRlcSNPK4wH
         fLtMLZo9KQPfJIg7SemjEWJC9u0snKNIRi9RMIsgTe4/mHlAdlC802YIXck72xPijAWz
         Yg0FIMqsq+DzzbQCo85gKvaAgzPbBlgxikOibPB6XJVhbmSsFgQWpAJTECBZagETxJih
         r6BoB8PVwmerfYVttb3cDG/KDdDN5GeaZ7TT2xGngiDCKz6ROjrysQydpS6/VN6PDuPv
         2MExMZvnoFim8TDPghhLWgyCzfYa3cRzeLWDpeihnae0ous3NUkAvMFYCDez4tmacpOT
         Jj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771504150; x=1772108950;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xoHfbFF4DYK64Lm2gfibWtIRUdyrmQQRPk+epjkppv4=;
        b=ILuOoAO9GX2TQkvmR2NEVj4yvbarJUzl4LM4aANHDKi8UDBkecmhJT8uXQPCuXM+6u
         8Dqz4aHmjI6ysJ/FYbzd5+SXXaHRdMundQ5Yj9EgK7UYtpC1R8K+yPH+4uZbK0I7zTLf
         oUBeF8kepm8dPJbAfkjTR39COPtALxZmeCGUZ5Qjo+sfRaNvmfmfwOV6BIIXkYPMzdfk
         DxVw20VYAESeMyB0Eps+ubd/fyL4NrNP+M7XvzMV9BY6cINTgUiEVjhr1zkJjd0qEAoK
         FKAhX7SZPcYyxnnOCwTOn1WlR4x27sB+rLyPsyCJD+sP+3tvf0PxtXC+NphW4n7hG66P
         mpww==
X-Gm-Message-State: AOJu0YyCvCyFP0njSgpkfehB6T7v/ahNpkyJBehNjxuDim1r7nkW2wRK
	Yk+BJo/X8JMfU4+m9HVqN84O+aHhjJCWoGBiA5qee8TXA9fIinQRehCjDLAhldsmDmARzOrABiu
	4YfHczli1t3oJ+6jYy6P3ClAdnwIKh0BJIDbPgWcwH+KjpXlW2a5hYGYJLw==
X-Gm-Gg: AZuq6aKSF8zBL7Khkq+Asf0C5jWQlLka+xgU+WUffJ2U43DbPSBxfFEyTamA2i0T53U
	EZ8Ku7wPnllZeKsKgJMKcK361pfTO2qEyoXmnem7du6BI+ZCKK99BxszCWAKP7jJKggim+inXji
	mwjHbsz9uuP9uQmwbWGteldndqL/76QGC14ZLlbUG/7E1OPUgurTh8tYwC7OIYb4CMAsSvcrZS1
	dcMWcEFvTZRGprlkAKKliXgQ5kGjXqGcAhKgjKBMqd35I0rardODAGR6F3FQOsmiDzo7hmN4Vtc
	NVsKI3Cx3zM7eNCNbjdUsGa3NWhfLlZw00vs0Q==
X-Received: by 2002:a05:622a:2443:b0:506:bfa3:55c2 with SMTP id
 d75a77b69052e-506bfa37712mr211610691cf.14.1771504150000; Thu, 19 Feb 2026
 04:29:10 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjyLQZqYX=R45sOzGgEz734g8p5siB000cd=R2L0P0zPUg@mail.gmail.com>
 <CAFOi1A5ykqB8vgS9dgxfOXWu8BzbiCSo5HO+HvjsLVg-wFOG0Q@mail.gmail.com>
 <3463ae64-2df0-44c5-a12d-c705a238175c@gmail.com> <CAFOi1A4ana0ED+Vcvv1zw+FAMyS3Bzr4tpaB9V9bN8FE7EcXtA@mail.gmail.com>
 <4ee48674-ce39-4bad-8068-f478a04c44f8@gsi.de>
In-Reply-To: <4ee48674-ce39-4bad-8068-f478a04c44f8@gsi.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 19 Feb 2026 13:28:58 +0100
X-Gm-Features: AaiRm53WuohvtwGxw3L5nrakqiwQDpUfAp8J5vQz6wvwn1b_b-mLYxfisbBPzP8
Message-ID: <CAFOi1A5HTPeOv3oUiPx0ne3mchxgurAT_=PEcVZbBPajVVENWw@mail.gmail.com>
To: Philipp Niedermayer <p.niedermayer@gsi.de>
Message-ID-Hash: O227GEHY6PFLPAQ2NFQOSNZ65VK7VTXL
X-Message-ID-Hash: O227GEHY6PFLPAQ2NFQOSNZ65VK7VTXL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-2952R (X310) PCIe interface issue with UHD (built from OAI source)on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O227GEHY6PFLPAQ2NFQOSNZ65VK7VTXL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7069996628651386726=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mm2.emwd.com:helo,mm2.emwd.com:rdns,emwd.com:dkim,ettus.com:email,mail.gmail.com:mid,gsi.de:email]
X-Rspamd-Queue-Id: 3505A15E97F
X-Rspamd-Action: no action

--===============7069996628651386726==
Content-Type: multipart/alternative; boundary="000000000000944573064b2c73b5"

--000000000000944573064b2c73b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Philipp,

thanks for your feedback. You're absolutely right on the latency side, I
was not considering this when I wrote my response (it's still true that
many people who use PCIe could just as well use Ethernet, and for those, I
think Ethernet is a better choice).
Regarding the usability, you know, I use the PCIe connection so rarely that
I had totally forgotten about this upside. Your comments (and your
request!) have been heard!

--M

On Thu, Jan 22, 2026 at 5:48=E2=80=AFPM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:

> Hi Martin,
>
> there's one metric where PCIe outperforms Ethernet: Latency.
>
> We have a loopback (via host) application where we can see that the signa=
l
> latency from USRP X310 RX to TX is better for PCIe based connection
> compared to Ethernet, both in terms of average latency and jitter. To giv=
e
> some numbers, one of our flowgraphs has 1.67=C2=B10.15 ms latency over PC=
Ie;
> with 10G Ethernet-based connection it drops down to 2.3=C2=B10.9 ms (1sig=
ma).
> Especially the jitter is problematic as it means that latency can go up t=
o
> > 4 ms. I know it's a very specific use case, but the statement "better
> choice on any metric" is not correct here from our lab's experience ;)
>
> Another nice feature of PCIe: one can specify different FPGA images in
> flowgraphs and clicking the "Play" button in GNU Radio loads the correct
> image for whatever flowgraph you are currently working with automatically=
.
> For Ethernet there is at least one separate step required to flash the
> image first. It works, but I would argue it's a downside in terms of
> usability.
>
> Hope you guys don't just drop PCIe support!
>
> Best
> Philipp
>
>
> *From:* Martin Braun <martin.braun@ettus.com> <martin.braun@ettus.com>
>
> *Sent:* Thursday, 22 January 2026 at 14:11
>
> *To:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> <usrp-users@lists.ettus.com>
>
> *Subject:* [USRP-users] Re: USRP-2952R (X310) PCIe interface issue with
> UHD (built from OAI source)on Ubuntu 22.04
>
> Hey Vishwanath,
>
> Ok, thanks for updating the issue.
> The standard workaround we recommend is to use Ethernet, not PCIe. It's
> generally the better choice on any metrics (throughput, cable management,
> ease of setup) and really has no downsides.
>
> --M
>
> On Wed, Jan 21, 2026 at 10:22=E2=80=AFAM Vishwanath <koushikpsvishwanath@=
gmail.com>
> wrote:
>
>> Hi Martin,
>>
>> Thank you for your message.
>>
>> I have now updated the bug report at the link you shared (Issue #818)
>> with my system details and observations so that the information is
>> available for reference.
>>
>> I would really appreciate it if you could kindly take a look at the
>> report when you get a chance. If you have any suggestions, potential fix=
es,
>> or known workarounds for this issue, your guidance would be very helpful=
.
>>
>> Please let me know if any additional logs or information are needed from
>> my side.
>>
>> Thanks again for your support.
>>
>> Regards,
>> Vishwanath
>>
>>
>>
>> On 20/01/26 14:38, Martin Braun wrote:
>>
>> Hi Vishwanath,
>>
>> can you please amend this bug report:
>> https://github.com/EttusResearch/uhd/issues/818 ...with your system
>> details so we can get a bigger picture of what's happening.
>>
>> Thanks!
>>
>> --Martin
>>
>> On Sat, Jan 17, 2026 at 2:32=E2=80=AFPM P S Vishwanath Koushik <
>> koushikpsvishwanath@gmail.com> wrote:
>>
>>> Hello community,
>>>
>>> I am seeking guidance regarding using *USRP-2952R (X310)* over *PCIe*
>>> on a Linux host, and I would appreciate any suggestions or known-good
>>> configurations.
>>>
>>> *System and software setup:*
>>>
>>>    -
>>>
>>>    Host OS: Ubuntu 22.04 LTS
>>>    -
>>>
>>>    USRP: NI USRP-2952R (X310), PCIe (RIO) interface
>>>    -
>>>
>>>    UHD: Built from source (UHD version bundled with / referenced by OAI
>>>    source tree)
>>>    -
>>>
>>>    NI Linux Device Drivers: *NI USRP 2025 Q2  driver linkj
>>>    <https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.ht=
ml?srsltid=3DAfmBOor6EEe0WKBK67bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#56544=
6>*
>>>    -
>>>
>>>    Installed NI packages:
>>>    -
>>>
>>>       ni-fpga-interface
>>>       -
>>>
>>>       ni-rio-mxie
>>>       -
>>>
>>>       ni-rseries
>>>       -
>>>
>>>       ni-hwcfg-utility
>>>       -
>>>
>>>       ni-usrp-rio
>>>
>>>
>>>
>>> *Use case:*
>>> I am trying to interface the USRP-2952R with an *OAI-based host machine=
*,
>>> using UHD over PCIe (RIO), not Ethernet.
>>>
>>> *Observed behavior:*
>>>
>>>    -
>>>
>>>    The device is detected correctly using uhd_find_devices
>>>    -
>>>
>>>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>>    UHD_4.8.0.HEAD-0-g308126a4
>>>    --------------------------------------------------
>>>    -- UHD Device 0
>>>    --------------------------------------------------
>>>    Device Address:
>>>        serial:
>>>        fpga: HG
>>>        name:
>>>        product: X310
>>>        resource: RIO0
>>>        type: x300
>>>
>>>    -
>>>
>>>    UHD finds and selects the correct FPGA image (
>>>    usrp_x310_fpga_HG.lvbitx)
>>>    -
>>>
>>>    However, uhd_usrp_probe fails during RIO initialization with:
>>>
>>>    RuntimeError: x300_impl: Could not initialize RIO session.
>>>    Unknown error. (Error code -63150)
>>>
>>>    -
>>>
>>>    vishwanath@vishwanath:~$ sudo uhd_usrp_probe
>>>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.=
HEAD-0-g308126a4
>>>    [INFO] [X300] X300 initialization sequence...
>>>    [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>>    [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_=
x310_fpga_HG.lvbitx
>>>    Error: RuntimeError: x300_impl: Could not initialize RIO session. Un=
known error. (Error code -63150)
>>>
>>>
>>> This suggests the failure occurs after FPGA image selection, during
>>> NI-RIO session initialization.
>>>
>>> *Questions:*
>>>
>>>    1.
>>>
>>>    Is *NI Linux Device Drivers 2025 Q2* known to be compatible with UHD
>>>    (especially when UHD is built from OAI sources) for X310/USRP-2952R =
over
>>>    PCIe?
>>>    2.
>>>
>>>    Are there any *recommended UHD versions* or commits known to work
>>>    reliably with USRP-2952R + PCIe on Ubuntu 22.04?
>>>    3.
>>>
>>>    Has anyone successfully used *OAI with USRP-2952R over PCIe*, and if
>>>    so, could you share the software stack versions?
>>>    4.
>>>
>>>    Are there additional NI-RIO or kernel requirements that UHD depends
>>>    on for PCIe-based X310 devices?
>>>
>>> Any insights, known limitations, or recommended downgrade/upgrade paths
>>> would be very helpful.
>>>
>>> Thank you for your time and support.
>>>
>>> Regards,
>>> Vishwanath
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000944573064b2c73b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Philipp,</div><div><br></div><div>thanks for your =
feedback. You&#39;re absolutely right on the latency side, I was not consid=
ering this when I wrote my response (it&#39;s still true that many people w=
ho use PCIe could just as well use Ethernet, and for those, I think Etherne=
t is a better choice).</div><div>Regarding the usability, you know, I use t=
he PCIe connection so rarely that I had totally forgotten about this upside=
. Your comments (and your request!) have been heard!</div><div><br></div><d=
iv>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 22, 2026 at 5:48=E2=80=AFPM P=
hilipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermaye=
r@gsi.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <p>Hi Martin,</p>
    <p>there&#39;s one metric where PCIe outperforms Ethernet: Latency.=C2=
=A0</p>
    <p>We have a loopback (via host) application where we can see that
      the signal latency from USRP X310 RX to TX is better for PCIe
      based connection compared to Ethernet, both in terms of average
      latency and jitter. To give some numbers, one of our flowgraphs
      has 1.67=C2=B10.15 ms latency over PCIe; with 10G=C2=A0Ethernet-based
      connection it drops down to 2.3=C2=B10.9 ms (1sigma). Especially the
      jitter is problematic as it means that latency can go up to &gt; 4
      ms. I know it&#39;s a very specific use case, but the statement
      &quot;better choice on any metric&quot; is not correct here from our =
lab&#39;s
      experience ;)</p>
    <p>Another nice feature of PCIe: one can specify different FPGA
      images in flowgraphs and clicking the &quot;Play&quot; button in=C2=
=A0GNU Radio
      loads the correct image for whatever flowgraph=C2=A0you are currently
      working with automatically. For Ethernet there is at least one
      separate step required to flash the image first. It works, but I
      would argue it&#39;s a downside in terms of usability.</p>
    <p>Hope you guys don&#39;t just drop PCIe support!</p>
    <p>Best<br>
      Philipp</p>
    <p><br>
    </p>
    <div>
      <div id=3D"m_6708935521698504884rwhHeaders" style=3D"border-width:1pt=
 medium medium;border-style:solid none none;border-color:rgb(181,196,223) c=
urrentcolor currentcolor;padding:3pt 0cm 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b> Martin Braun
            <a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">&lt=
;martin.braun@ettus.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Thursday, 22 January
            2026 at 14:11</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank"=
>USRP-users@lists.ettus.com</a>
            <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>&lt;usrp-users@lists.ettus.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users] Re:
            USRP-2952R (X310) PCIe interface issue with UHD (built from
            OAI source)on Ubuntu 22.04</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite" style=3D"border:medium;padding-left:0px;margi=
n-left:0px">
     =20
      <div dir=3D"ltr">Hey Vishwanath,<br>
        <br>
        <div>Ok, thanks for updating the issue.</div>
        <div>The standard workaround we recommend is to use Ethernet,
          not PCIe. It&#39;s generally the better choice on any metrics
          (throughput, cable management, ease of setup) and really has
          no downsides.</div>
        <br>
        --M</div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 21, 2026 at
          10:22=E2=80=AFAM Vishwanath &lt;<a href=3D"mailto:koushikpsvishwa=
nath@gmail.com" target=3D"_blank">koushikpsvishwanath@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p><span>Hi Martin,</span></p>
            <p><span>Thank you for your message.</span></p>
            <p><span>I have now updated the bug report at the link you
                shared (Issue #818) with my system details and
                observations so that the information is available for
                reference.</span></p>
            <p><span>I would really appreciate it if you could kindly
                take a look at the report when you get a chance. If you
                have any suggestions, potential fixes, or known
                workarounds for this issue, your guidance would be very
                helpful.</span></p>
            <p><span>Please let me know if any additional logs or
                information are needed from my side.</span></p>
            <p><span>Thanks again for your support.</span></p>
            <p><span>Regards,</span><br>
              <span>Vishwanath<br>
              </span></p>
            <p><br>
              <br>
            </p>
            <div>On 20/01/26 14:38, Martin Braun wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div>Hi Vishwanath,</div>
                <div><br>
                </div>
                <div>can you please amend this bug report:=C2=A0<a href=3D"=
https://github.com/EttusResearch/uhd/issues/818" target=3D"_blank">https://=
github.com/EttusResearch/uhd/issues/818</a>
                  ...with your system details so we can get a bigger
                  picture of what&#39;s happening.</div>
                <div><br>
                </div>
                <div>Thanks!</div>
                <div><br>
                </div>
                <div>--Martin</div>
              </div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 17, 2026
                  at 2:32=E2=80=AFPM P S Vishwanath Koushik &lt;<a href=3D"=
mailto:koushikpsvishwanath@gmail.com" target=3D"_blank">koushikpsvishwanath=
@gmail.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <p>Hello community,</p>
                    <p>I am seeking guidance regarding using <strong>USRP-2=
952R
                        (X310)</strong> over <strong>PCIe</strong> on a
                      Linux host, and I would appreciate any suggestions
                      or known-good configurations.</p>
                    <p><strong>System and software setup:</strong></p>
                    <ul>
                      <li>
                        <p>Host OS: Ubuntu 22.04 LTS</p>
                      </li>
                      <li>
                        <p>USRP: NI USRP-2952R (X310), PCIe (RIO)
                          interface</p>
                      </li>
                      <li>
                        <p>UHD: Built from source (UHD version bundled
                          with / referenced by OAI source tree)</p>
                      </li>
                      <li>
                        <p>NI Linux Device Drivers: <strong>NI USRP
                            2025 Q2=C2=A0<a href=3D"https://www.ni.com/en/s=
upport/downloads/drivers/download.ni-usrp.html?srsltid=3DAfmBOor6EEe0WKBK67=
bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#565446" target=3D"_blank">=C2=A0driv=
er
                              linkj</a></strong></p>
                      </li>
                      <li>
                        <p>Installed NI packages:</p>
                        <ul>
                          <li>
                            <p>ni-fpga-interface</p>
                          </li>
                          <li>
                            <p>ni-rio-mxie</p>
                          </li>
                          <li>
                            <p>ni-rseries</p>
                          </li>
                          <li>
                            <p>ni-hwcfg-utility</p>
                          </li>
                          <li>
                            <pre>ni-usrp-rio</pre>
                            <p><br>
                            </p>
                          </li>
                        </ul>
                      </li>
                    </ul>
                    <p><strong>Use case:</strong><br>
                      I am trying to interface the USRP-2952R with an <stro=
ng>OAI-based
                        host machine</strong>, using UHD over PCIe
                      (RIO), not Ethernet.</p>
                    <p><strong>Observed behavior:</strong></p>
                    <ul>
                      <li>
                        <p>The device is detected correctly using <code>uhd=
_find_devices</code></p>
                      </li>
                      <li>
                        <p>[INFO] [UHD] linux; GNU C++ version 11.4.0;
                          Boost_107400; UHD_4.8.0.HEAD-0-g308126a4<br>
--------------------------------------------------<br>
                          -- UHD Device 0<br>
--------------------------------------------------<br>
                          Device Address:<br>
                          =C2=A0 =C2=A0 serial: <br>
                          =C2=A0 =C2=A0 fpga: HG<br>
                          =C2=A0 =C2=A0 name: <br>
                          =C2=A0 =C2=A0 product: X310<br>
                          =C2=A0 =C2=A0 resource: RIO0<br>
                          =C2=A0 =C2=A0 type: x300<br>
                          <code><br>
                          </code></p>
                      </li>
                      <li>
                        <p>UHD finds and selects the correct FPGA image
                          (<code>usrp_x310_fpga_HG.lvbitx</code>)</p>
                      </li>
                      <li>
                        <p>However, <code>uhd_usrp_probe</code> fails
                          during RIO initialization with:</p>
                        <pre><code>RuntimeError: x300_impl: Could not initi=
alize RIO session.
Unknown error. (Error code -63150)</code></pre>
                      </li>
                      <li>
                        <pre>vishwanath@vishwanath:~$ sudo uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.HEAD-0-=
g308126a4
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x310_fp=
ga_HG.lvbitx
Error: RuntimeError: x300_impl: Could not initialize RIO session. Unknown e=
rror. (Error code -63150)
<code>
</code></pre>
                      </li>
                    </ul>
                    <p>This suggests the failure occurs after FPGA image
                      selection, during NI-RIO session initialization.</p>
                    <p><strong>Questions:</strong></p>
                    <ol>
                      <li>
                        <p>Is <strong>NI Linux Device Drivers 2025 Q2</stro=
ng>
                          known to be compatible with UHD (especially
                          when UHD is built from OAI sources) for
                          X310/USRP-2952R over PCIe?</p>
                      </li>
                      <li>
                        <p>Are there any <strong>recommended UHD
                            versions</strong> or commits known to work
                          reliably with USRP-2952R + PCIe on Ubuntu
                          22.04?</p>
                      </li>
                      <li>
                        <p>Has anyone successfully used <strong>OAI
                            with USRP-2952R over PCIe</strong>, and if
                          so, could you share the software stack
                          versions?</p>
                      </li>
                      <li>
                        <p>Are there additional NI-RIO or kernel
                          requirements that UHD depends on for
                          PCIe-based X310 devices?</p>
                      </li>
                    </ol>
                    <p>Any insights, known limitations, or recommended
                      downgrade/upgrade paths would be very helpful.</p>
                    <p>Thank you for your time and support.</p>
                    <p>Regards,<br>
                      Vishwanath</p>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list -- <a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
                  To unsubscribe send an email to <a href=3D"mailto:usrp-us=
ers-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.c=
om</a><br>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </div>

</blockquote></div>

--000000000000944573064b2c73b5--

--===============7069996628651386726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7069996628651386726==--
