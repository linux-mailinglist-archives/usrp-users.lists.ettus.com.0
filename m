Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNcaM1QicmmPdQAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 14:12:52 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5258671F9
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 14:12:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0DA7387E9B
	for <lists+usrp-users@lfdr.de>; Thu, 22 Jan 2026 08:12:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769087570; bh=oIY4OMH+1P8xTgmuuuGTvaoJYDqv+bs6nlM1QfA1FuE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kEyvSvsS+zKT3nUTChe3e7lvCAlDLYh5+VJXgse9+ytN/oZN1TZgRnoO9NnpxJywZ
	 Kq4dGIUsE+wgAgdT95fU1UQ60KXX+Sgx9FkBy39Yrn5llmZcB6jAErs25puCnFLcfz
	 Mbwl8VYiWpTB5yvmYHCgEN/fBFlh/pCzd5yyhaDsXuel3j+9sdYQQ7XUbaotx7mkm+
	 vro21QVdXd27NMvwQOn+Fi1UtGOr2Bga0+IDUlC22yqP/xA1RqshrrSzDx81fCq5NH
	 11nCNJsjcj7iL0RLPBPOjBiZB6i/+aPQTsCU/OnZlgSMLvRJZIRyVy44+z+5+imTzk
	 IlSiEBx95JQ5w==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FA2C387CC2
	for <usrp-users@lists.ettus.com>; Thu, 22 Jan 2026 08:11:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="B9KzSqE1";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8c6a822068eso123371185a.3
        for <usrp-users@lists.ettus.com>; Thu, 22 Jan 2026 05:11:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769087501; cv=none;
        d=google.com; s=arc-20240605;
        b=SDGebSsKWCsuRm3Wg+wXPS36QmhEJxxdQPquSVsUwCHclwwn1uSTQAON6ydfD4EmhI
         bg1b8MHLnV0d3VZfndPQ5b2DHJPT/G+Ms6zizSvbeEDU/Rqfqvty9GUXCwjGcMgNP7m0
         86AbikAQBZHTaRu/BDTl63uktO+aqMtwkXxxIU+vvJ49qHYrbdDUxQS8Zs3pL15/bl2t
         EGk4Pxrrq3V0tJuHJYS2DLYXnzffwHuKhvsH6R4zNe2wmHGBBDDXiqGrvyHdGX7TjrI/
         MZjS6nFwj2f9gv0yf9Wk8X7u/o4Lz/efv+MlqdJlaLXOuojCXRLDEvHedPgLiXV9VgBZ
         k75A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=ZLZ70t+3hAZY58y4x3UrVUpMGyIl1pJLqVMNxMy83ww=;
        fh=9CUBuACEF7a4/qEm7ltrWraAgj2qU8WjZ8LgOx5Sr9U=;
        b=NYgDmPuu6U/H94HV9013kLCIHkj78ltdGVyWxbYWY0Krdg/1KHdh4ch2+Flrx7QfI/
         8S+qH1APxmOne09tHDyCYq0F+U2tQnfH4vXSrWvku3E3Uvklk0IIUw3pfQvZdE37/2uz
         xI1QWY1FsJg2UueJSPPe1xgqQoodB+jlalTgSh+7KskB27R4Gan7Gk4/wDqFAhM1IZid
         +effCQ6cMbT/oqUljuFWOzhR+qZLZHGKuB9vgzBtRGivMoVfqeQC0fToY0qt/Fmsm4WQ
         Q08ELzc3rxt5BwPGPlENLBvHYW3cLfDk6bL3ATvNrXNyRYCfrgL3DoBpd7lFe/etsYMw
         OT9Q==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1769087501; x=1769692301; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZLZ70t+3hAZY58y4x3UrVUpMGyIl1pJLqVMNxMy83ww=;
        b=B9KzSqE1VkYQdVr79yfX5m8tLLgCoH84l9jdXMiw3f3ZEkkd69QywXYFV9i3yviPnB
         VVkU+H98SY5JzpS1pdGtOEm+G1shpfU9hL15XxXrbfe6x4jgpg+WRXWXgFIfQEn2Sw5b
         Puz1UqcaYAbMSY4DQ00qnPU3xMkryEg6sNvf46RM/m2gudPkXAhr7YsZnYzF6cPyOz79
         UH+jbxoEnqaRCbmWLvN7YktIW6gRYdEnwokmOqQLmx51L7xmskiWmM7Je56leXEiKhco
         w44h2fwgBcIigBDmVQ3M8I8yyWo8KMwR8kXCSMppcsc6N7lZH/3cSdMhJUQPxzQxd3xX
         VpMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769087501; x=1769692301;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLZ70t+3hAZY58y4x3UrVUpMGyIl1pJLqVMNxMy83ww=;
        b=Yv9ZCBbDTw+EPz4riHRh8azaZCyHoBJS2XYRhojja78QjddcPMEjK22RJO5LtLcfqu
         ZKuL4ZFGZHgQC2HT9gqZFNuydNR1tgNqHrd0f0RbmNCzRkY25+Z3n4A2xsKYU1nnuzh4
         zJ3xnYs3y1CQsWbFjiQuJmDSE4cPFZPWZCZyhvRIDA6oligOhigg0FQ6kLhFryvVBP6D
         FNnaKEI7NKib3VFESLWu37z7EqH44dtjIhf8BVBu05DzfHTv6gRqm+2jmMg/Q31JrzCf
         N01shp+3ANVlumoMKZsCSVWrLlnLSFH3oTK5jOmcG+4mgh7xu21En6mLSvchJTqwiOW0
         MLXw==
X-Gm-Message-State: AOJu0YynignaM72cuhwfNyOG63XaepNG/xn03wD1iK+CMUVZFmfvbvYb
	CQJ+SvOdq+4a5gMYt8skVJNA2ukjKUuGT0Y+nX15t3e4COnpjXT6m80x1GU+xBVVUrO6VH2zITb
	dliya2Ifw4FbWvYCvXRLmUYPKwwI3dCOfQBgCZvk5koqIVskZSiHiZkI=
X-Gm-Gg: AZuq6aL7GsIuElPF0bmuOIBp+OArXfSL2ZzZvezyo9KTR+9mujHnBC+21CFbOOARNhZ
	3LAaXfCPviJnC3bQ1a10wz9LBFc14B8e3oylgOySbPOsq4xHeUwEZwqgRnfjF11xIuO4bzLXeWm
	NQEEnSqpggFxr7mMsAIRhrkSESKcafXqFgvgyBIcIFIjRj45S07/e6ui/WrsPTC0/QK1y1Qjm9O
	sM+BM1XAL+SrZ5T8inb0TFDmxJkvMv+IRfqx0ERT9PHJIdrW0aFR3/DU5RkmuOWl9lQioCMhM/V
	b2JAWE9dTCulpwG2bMjLyLL5T7E=
X-Received: by 2002:a05:620a:2585:b0:8c6:a585:aa83 with SMTP id
 af79cd13be357-8c6a68d35a6mr2838045585a.18.1769087501106; Thu, 22 Jan 2026
 05:11:41 -0800 (PST)
MIME-Version: 1.0
References: <CABQiKjyLQZqYX=R45sOzGgEz734g8p5siB000cd=R2L0P0zPUg@mail.gmail.com>
 <CAFOi1A5ykqB8vgS9dgxfOXWu8BzbiCSo5HO+HvjsLVg-wFOG0Q@mail.gmail.com> <3463ae64-2df0-44c5-a12d-c705a238175c@gmail.com>
In-Reply-To: <3463ae64-2df0-44c5-a12d-c705a238175c@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 22 Jan 2026 14:11:29 +0100
X-Gm-Features: AZwV_QgtBqLxbOOVJEjagUHVXASvTsY76yinjaO_mCZZkF771_GOqLz6cXpig_g
Message-ID: <CAFOi1A4ana0ED+Vcvv1zw+FAMyS3Bzr4tpaB9V9bN8FE7EcXtA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: BOSQT5MKZVTWETI55W5WLWGRJPVJQKAA
X-Message-ID-Hash: BOSQT5MKZVTWETI55W5WLWGRJPVJQKAA
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-2952R (X310) PCIe interface issue with UHD (built from OAI source)on Ubuntu 22.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BOSQT5MKZVTWETI55W5WLWGRJPVJQKAA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4535486248927332000=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_RCPT(0.00)[usrp-users];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: E5258671F9
X-Rspamd-Action: no action

--===============4535486248927332000==
Content-Type: multipart/alternative; boundary="000000000000148f6e0648f9c81b"

--000000000000148f6e0648f9c81b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Vishwanath,

Ok, thanks for updating the issue.
The standard workaround we recommend is to use Ethernet, not PCIe. It's
generally the better choice on any metrics (throughput, cable management,
ease of setup) and really has no downsides.

--M

On Wed, Jan 21, 2026 at 10:22=E2=80=AFAM Vishwanath <koushikpsvishwanath@gm=
ail.com>
wrote:

> Hi Martin,
>
> Thank you for your message.
>
> I have now updated the bug report at the link you shared (Issue #818) wit=
h
> my system details and observations so that the information is available f=
or
> reference.
>
> I would really appreciate it if you could kindly take a look at the repor=
t
> when you get a chance. If you have any suggestions, potential fixes, or
> known workarounds for this issue, your guidance would be very helpful.
>
> Please let me know if any additional logs or information are needed from
> my side.
>
> Thanks again for your support.
>
> Regards,
> Vishwanath
>
>
>
> On 20/01/26 14:38, Martin Braun wrote:
>
> Hi Vishwanath,
>
> can you please amend this bug report:
> https://github.com/EttusResearch/uhd/issues/818 ...with your system
> details so we can get a bigger picture of what's happening.
>
> Thanks!
>
> --Martin
>
> On Sat, Jan 17, 2026 at 2:32=E2=80=AFPM P S Vishwanath Koushik <
> koushikpsvishwanath@gmail.com> wrote:
>
>> Hello community,
>>
>> I am seeking guidance regarding using *USRP-2952R (X310)* over *PCIe* on
>> a Linux host, and I would appreciate any suggestions or known-good
>> configurations.
>>
>> *System and software setup:*
>>
>>    -
>>
>>    Host OS: Ubuntu 22.04 LTS
>>    -
>>
>>    USRP: NI USRP-2952R (X310), PCIe (RIO) interface
>>    -
>>
>>    UHD: Built from source (UHD version bundled with / referenced by OAI
>>    source tree)
>>    -
>>
>>    NI Linux Device Drivers: *NI USRP 2025 Q2  driver linkj
>>    <https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.htm=
l?srsltid=3DAfmBOor6EEe0WKBK67bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#565446=
>*
>>    -
>>
>>    Installed NI packages:
>>    -
>>
>>       ni-fpga-interface
>>       -
>>
>>       ni-rio-mxie
>>       -
>>
>>       ni-rseries
>>       -
>>
>>       ni-hwcfg-utility
>>       -
>>
>>       ni-usrp-rio
>>
>>
>>
>> *Use case:*
>> I am trying to interface the USRP-2952R with an *OAI-based host machine*=
,
>> using UHD over PCIe (RIO), not Ethernet.
>>
>> *Observed behavior:*
>>
>>    -
>>
>>    The device is detected correctly using uhd_find_devices
>>    -
>>
>>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400;
>>    UHD_4.8.0.HEAD-0-g308126a4
>>    --------------------------------------------------
>>    -- UHD Device 0
>>    --------------------------------------------------
>>    Device Address:
>>        serial:
>>        fpga: HG
>>        name:
>>        product: X310
>>        resource: RIO0
>>        type: x300
>>
>>    -
>>
>>    UHD finds and selects the correct FPGA image (usrp_x310_fpga_HG.lvbit=
x
>>    )
>>    -
>>
>>    However, uhd_usrp_probe fails during RIO initialization with:
>>
>>    RuntimeError: x300_impl: Could not initialize RIO session.
>>    Unknown error. (Error code -63150)
>>
>>    -
>>
>>    vishwanath@vishwanath:~$ sudo uhd_usrp_probe
>>    [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.H=
EAD-0-g308126a4
>>    [INFO] [X300] X300 initialization sequence...
>>    [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
>>    [INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x=
310_fpga_HG.lvbitx
>>    Error: RuntimeError: x300_impl: Could not initialize RIO session. Unk=
nown error. (Error code -63150)
>>
>>
>> This suggests the failure occurs after FPGA image selection, during
>> NI-RIO session initialization.
>>
>> *Questions:*
>>
>>    1.
>>
>>    Is *NI Linux Device Drivers 2025 Q2* known to be compatible with UHD
>>    (especially when UHD is built from OAI sources) for X310/USRP-2952R o=
ver
>>    PCIe?
>>    2.
>>
>>    Are there any *recommended UHD versions* or commits known to work
>>    reliably with USRP-2952R + PCIe on Ubuntu 22.04?
>>    3.
>>
>>    Has anyone successfully used *OAI with USRP-2952R over PCIe*, and if
>>    so, could you share the software stack versions?
>>    4.
>>
>>    Are there additional NI-RIO or kernel requirements that UHD depends
>>    on for PCIe-based X310 devices?
>>
>> Any insights, known limitations, or recommended downgrade/upgrade paths
>> would be very helpful.
>>
>> Thank you for your time and support.
>>
>> Regards,
>> Vishwanath
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000148f6e0648f9c81b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Vishwanath,<br><br><div>Ok, thanks for updating the is=
sue.</div><div>The standard workaround we recommend is to use Ethernet, not=
 PCIe. It&#39;s generally the better choice on any metrics (throughput, cab=
le management, ease of setup) and really has no downsides.</div><br>--M</di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Jan 21, 2026 at 10:22=E2=80=AFAM Vishwanath &lt;<=
a href=3D"mailto:koushikpsvishwanath@gmail.com">koushikpsvishwanath@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><u></u>

 =20
   =20
 =20
  <div>
    <p><span>Hi Martin,</span></p>
    <p><span>Thank you for your message.</span></p>
    <p><span>I have now updated the bug report at
        the link you shared (Issue #818) with my system details and
        observations so that the information is available for reference.</s=
pan></p>
    <p><span>I would really appreciate it if you
        could kindly take a look at the report when you get a chance. If
        you have any suggestions, potential fixes, or known workarounds
        for this issue, your guidance would be very helpful.</span></p>
    <p><span>Please let me know if any additional
        logs or information are needed from my side.</span></p>
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
     =20
      <div dir=3D"ltr">
        <div>Hi Vishwanath,</div>
        <div><br>
        </div>
        <div>can you please amend this bug report:=C2=A0<a href=3D"https://=
github.com/EttusResearch/uhd/issues/818" target=3D"_blank">https://github.c=
om/EttusResearch/uhd/issues/818</a>
          ...with your system details so we can get a bigger picture of
          what&#39;s happening.</div>
        <div><br>
        </div>
        <div>Thanks!</div>
        <div><br>
        </div>
        <div>--Martin</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 17, 2026 at
          2:32=E2=80=AFPM P S Vishwanath Koushik &lt;<a href=3D"mailto:kous=
hikpsvishwanath@gmail.com" target=3D"_blank">koushikpsvishwanath@gmail.com<=
/a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"ltr">
            <p>Hello community,</p>
            <p>I am seeking guidance regarding using <strong>USRP-2952R
                (X310)</strong> over <strong>PCIe</strong> on a Linux
              host, and I would appreciate any suggestions or known-good
              configurations.</p>
            <p><strong>System and software setup:</strong></p>
            <ul>
              <li>
                <p>Host OS: Ubuntu 22.04 LTS</p>
              </li>
              <li>
                <p>USRP: NI USRP-2952R (X310), PCIe (RIO) interface</p>
              </li>
              <li>
                <p>UHD: Built from source (UHD version bundled with /
                  referenced by OAI source tree)</p>
              </li>
              <li>
                <p>NI Linux Device Drivers: <strong>NI USRP 2025 Q2=C2=A0<a=
 href=3D"https://www.ni.com/en/support/downloads/drivers/download.ni-usrp.h=
tml?srsltid=3DAfmBOor6EEe0WKBK67bW6htIgwYHrSZHCqjQNjITK3N8gELTv-JB5AbO#5654=
46" target=3D"_blank">=C2=A0driver
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
              I am trying to interface the USRP-2952R with an <strong>OAI-b=
ased
                host machine</strong>, using UHD over PCIe (RIO), not
              Ethernet.</p>
            <p><strong>Observed behavior:</strong></p>
            <ul>
              <li>
                <p>The device is detected correctly using <code>uhd_find_de=
vices</code></p>
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
                <p>UHD finds and selects the correct FPGA image (<code>usrp=
_x310_fpga_HG.lvbitx</code>)</p>
              </li>
              <li>
                <p>However, <code>uhd_usrp_probe</code> fails during
                  RIO initialization with:</p>
                <pre><code>RuntimeError: x300_impl: Could not initialize RI=
O session.
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
                <p>Is <strong>NI Linux Device Drivers 2025 Q2</strong>
                  known to be compatible with UHD (especially when UHD
                  is built from OAI sources) for X310/USRP-2952R over
                  PCIe?</p>
              </li>
              <li>
                <p>Are there any <strong>recommended UHD versions</strong>
                  or commits known to work reliably with USRP-2952R +
                  PCIe on Ubuntu 22.04?</p>
              </li>
              <li>
                <p>Has anyone successfully used <strong>OAI with
                    USRP-2952R over PCIe</strong>, and if so, could you
                  share the software stack versions?</p>
              </li>
              <li>
                <p>Are there additional NI-RIO or kernel requirements
                  that UHD depends on for PCIe-based X310 devices?</p>
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
          USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
        </blockquote>
      </div>
    </blockquote>
  </div>

</blockquote></div>

--000000000000148f6e0648f9c81b--

--===============4535486248927332000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4535486248927332000==--
