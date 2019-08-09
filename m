Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DED788107
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 19:19:18 +0200 (CEST)
Received: from [::1] (port=53130 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hw8Xr-0007xc-4o; Fri, 09 Aug 2019 13:19:15 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:42264)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bill1310272059@gmail.com>)
 id 1hw8Xn-0007rd-Vc
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 13:19:12 -0400
Received: by mail-ot1-f52.google.com with SMTP id l15so135407591otn.9
 for <usrp-users@lists.ettus.com>; Fri, 09 Aug 2019 10:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=AoDW2IFmtF5ium79fhHHnxIqUf//GZ+mLNOwk9WoqkM=;
 b=sqo2MZXpBIGxxfFBFSk+NEr/zrDItpM973aQSxnPV9U+hhCLR4IsaCafey3a05FZ9J
 lXMJ+TOHk+mnuHQYhWr72Ixa0frEjYcID0vzXtno9ap7SQn2cRKIBzPUfHyrg6gCPrLo
 Ens9HFveVlxNtjX+eVBrWJepqv6PenLKL2cCLsh+G828dgL7ZiNvESIEcQPT+w78voRg
 AHYXRt/08OtPC7NglXs/fzvKcTvBs0kUMENxtbJ/YSR+y2EHSf5Ph66ToAdSBcbs/E99
 H/Xn1/XYx5T90FOKsQuZ9NIDmxsOoWYeN1KGTpss+Hn76Tn/6JSzGU6TwWeEB94SZODH
 IPYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AoDW2IFmtF5ium79fhHHnxIqUf//GZ+mLNOwk9WoqkM=;
 b=oMxtDvi2jDg5Uyr/uNJcwkPxUfPDqtPjJQvLD4HbkiLrfAejh+ZQp5WSq5fKmjqiSy
 xmmjx3F28NewRirZIvRS6Xr7zi4xneS5jWIfNumccASO8Bd3FU5/qVsDFFvMZUMMugY4
 scGKJo9rKyukON+ZRnH804z+6EXW4cZxtmUt7uAxziqzmuOktfxCJkBtMXAUBPqKOjhH
 2oMCvGGumKUiQ+kbuu7jZYftjatHHG5cXMKfNCgPd8QxpzUnXyD8oZkPNGfP7tbdQCWs
 W5LHag4SUSnJCuQhj5u3d4DtDOGsyKxuni9ZA475EbZQnNyR/eii0607bfVmDLfeQVvF
 KFQw==
X-Gm-Message-State: APjAAAUtBO2GxhQxGYh8ijbpftfCiCejbnqXfVnpfCRCeqGVWzlAVleg
 IcYKMExwGqpCEIhBGATxYC6fk6nN/4N06PsxGiisV6N5
X-Google-Smtp-Source: APXvYqwnAaApp3Zx6j3BjZ0UiLsKwt4QQ2ylySpYf0ZgN54V708aPD0joIVpaMsi4dwr1B4Zme/AflAoQnNz6xX7/aU=
X-Received: by 2002:a5d:948a:: with SMTP id v10mr5925106ioj.103.1565371111049; 
 Fri, 09 Aug 2019 10:18:31 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 9 Aug 2019 13:18:19 -0400
Message-ID: <CACBa4aMGrsTbSAi_E8H+9Gs67FZiXqAKBCSw9pfvugcecXjdXw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] How to get code phase from the output of GNSS-SDR?
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
From: "Xu, Zhao via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Xu, Zhao" <ZhaoXu9807@gmail.com>
Content-Type: multipart/mixed; boundary="===============1752629600184727082=="
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

--===============1752629600184727082==
Content-Type: multipart/alternative; boundary="000000000000040e76058fb25d03"

--000000000000040e76058fb25d03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, I am trying to use USRP N210 to get the code phase of the received
satellite signal. And I have the output of Acquisition and Tracking Blocks
after running gnss-sdr command according to the instructions (
https://gnss-sdr.org/conf/ ).

However, I cannot understand the usage of these data and I also cannot find
some detailed explanation of the output file. I have the following data and
could you please tell me how I can calculate the code phase?

> %%
> *Output of Aquisition Block: acquisition_G_1C_ch_0_173_sat_6.mat*
>           PRN: 6
>     acq_delay_samples: 2550
>        acq_doppler_hz: -750
>              acq_grid: [4000=C3=9764 single]
>        d_positive_acq: 1
>           doppler_max: 8000
>          doppler_step: 250
>           input_power: 1.0608e+04
>            num_dwells: 1
>        sample_counter: 744302044
>        test_statistic: 0.0609
>             threshold: 0.0140
> %%
> *Output of Tracking Block: track_ch0.mat*              CN0_SNV_dB_Hz:
> [1=C3=9731544 single]
>                         PRN: [1=C3=9731544 uint32]
>      PRN_start_sample_count: [1=C3=9731544 uint64]
>                    Prompt_I: [1=C3=9731544 single]
>                    Prompt_Q: [1=C3=9731544 single]
>                       abs_E: [1=C3=9731544 single]
>                       abs_L: [1=C3=9731544 single]
>                       abs_P: [1=C3=9731544 single]
>                      abs_VE: [1=C3=9731544 single]
>                      abs_VL: [1=C3=9731544 single]
>       acc_carrier_phase_rad: [1=C3=9731544 single]
>                        aux1: [1=C3=9731544 single]
>                        aux2: [1=C3=9731544 double]
>          carr_error_filt_hz: [1=C3=9731544 single]
>               carr_error_hz: [1=C3=9731544 single]
>          carrier_doppler_hz: [1=C3=9731544 single]
>     carrier_doppler_rate_hz: [1=C3=9731544 single]
>           carrier_lock_test: [1=C3=9731544 single]
>            code_error_chips: [1=C3=9731544 single]
>       code_error_filt_chips: [1=C3=9731544 single]
>             code_freq_chips: [1=C3=9731544 single]
>        code_freq_rate_chips: [1=C3=9731544 single]


Thank you very much for your help!
--=20
Sincerely,
Zhao Xu

--000000000000040e76058fb25d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGVsbG8sIEkgYW0gdHJ5aW5nIHRvIHVzZSBVU1JQIE4yMTAgdG8gZ2V0
IHRoZSBjb2RlIHBoYXNlIG9mIHRoZSByZWNlaXZlZCBzYXRlbGxpdGUgc2lnbmFsLiBBbmQgSSBo
YXZlIHRoZSBvdXRwdXQgb2YgQWNxdWlzaXRpb24gYW5kIFRyYWNraW5nIEJsb2NrcyBhZnRlciBy
dW5uaW5nIGduc3Mtc2RyIGNvbW1hbmQgYWNjb3JkaW5nIHRvIHRoZSBpbnN0cnVjdGlvbnMgKA0K
DQo8YSBocmVmPSJodHRwczovL2duc3Mtc2RyLm9yZy9jb25mLyI+aHR0cHM6Ly9nbnNzLXNkci5v
cmcvY29uZi88L2E+wqApLjxiciBjbGVhcj0iYWxsIj48ZGl2Pjxicj48L2Rpdj48ZGl2Pkhvd2V2
ZXIsIEkgY2Fubm90IHVuZGVyc3RhbmQgdGhlIHVzYWdlIG9mIHRoZXNlIGRhdGEgYW5kIEkgYWxz
byBjYW5ub3QgZmluZCBzb21lIGRldGFpbGVkIGV4cGxhbmF0aW9uIG9mIHRoZSBvdXRwdXQgZmls
ZS4gSSBoYXZlIHRoZSBmb2xsb3dpbmcgZGF0YSBhbmQgY291bGQgeW91IHBsZWFzZSB0ZWxsIG1l
IGhvdyBJIGNhbiBjYWxjdWxhdGUgdGhlIGNvZGUgcGhhc2U/PC9kaXY+PGJsb2NrcXVvdGUgY2xh
c3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1s
ZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPiUlwqA8Yj5P
dXRwdXQgb2YgQXF1aXNpdGlvbiBCbG9jazrCoGFjcXVpc2l0aW9uX0dfMUNfY2hfMF8xNzNfc2F0
XzYubWF0PGJyPjwvYj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBQUk46IDY8YnI+wqAgwqAg
YWNxX2RlbGF5X3NhbXBsZXM6IDI1NTA8YnI+wqAgwqAgwqAgwqBhY3FfZG9wcGxlcl9oejogLTc1
MDxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoGFjcV9ncmlkOiBbNDAwMMOXNjQgc2luZ2xlXTxicj7C
oCDCoCDCoCDCoGRfcG9zaXRpdmVfYWNxOiAxPGJyPsKgIMKgIMKgIMKgIMKgIGRvcHBsZXJfbWF4
OiA4MDAwPGJyPsKgIMKgIMKgIMKgIMKgZG9wcGxlcl9zdGVwOiAyNTA8YnI+wqAgwqAgwqAgwqAg
wqAgaW5wdXRfcG93ZXI6IDEuMDYwOGUrMDQ8YnI+wqAgwqAgwqAgwqAgwqAgwqBudW1fZHdlbGxz
OiAxPGJyPsKgIMKgIMKgIMKgc2FtcGxlX2NvdW50ZXI6IDc0NDMwMjA0NDxicj7CoCDCoCDCoCDC
oHRlc3Rfc3RhdGlzdGljOiAwLjA2MDk8YnI+wqAgwqAgwqAgwqAgwqAgwqAgdGhyZXNob2xkOiAw
LjAxNDA8YnI+JSUgPGI+T3V0cHV0IG9mIFRyYWNraW5nIEJsb2NrOsKgdHJhY2tfY2gwLm1hdDxi
cj48L2I+wqAgwqAgwqAgwqAgwqAgwqAgwqAgQ04wX1NOVl9kQl9IejogWzHDlzMxNTQ0IHNpbmds
ZV08YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgUFJOOiBbMcOXMzE1NDQg
dWludDMyXTxicj7CoCDCoCDCoFBSTl9zdGFydF9zYW1wbGVfY291bnQ6IFsxw5czMTU0NCB1aW50
NjRdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUHJvbXB0X0k6IFsxw5czMTU0NCBz
aW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgUHJvbXB0X1E6IFsxw5czMTU0
NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIGFic19FOiBbMcOX
MzE1NDQgc2luZ2xlXTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCBhYnNfTDog
WzHDlzMxNTQ0IHNpbmdsZV08YnI+wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgYWJz
X1A6IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
YWJzX1ZFOiBbMcOXMzE1NDQgc2luZ2xlXTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGFic19WTDogWzHDlzMxNTQ0IHNpbmdsZV08YnI+wqAgwqAgwqAgYWNjX2NhcnJpZXJfcGhh
c2VfcmFkOiBbMcOXMzE1NDQgc2luZ2xlXTxicj7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGF1eDE6IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgYXV4MjogWzHDlzMxNTQ0IGRvdWJsZV08YnI+wqAgwqAgwqAgwqAgwqBjYXJy
X2Vycm9yX2ZpbHRfaHo6IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgIMKg
IGNhcnJfZXJyb3JfaHo6IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgY2Fycmll
cl9kb3BwbGVyX2h6OiBbMcOXMzE1NDQgc2luZ2xlXTxicj7CoCDCoCBjYXJyaWVyX2RvcHBsZXJf
cmF0ZV9oejogWzHDlzMxNTQ0IHNpbmdsZV08YnI+wqAgwqAgwqAgwqAgwqAgY2Fycmllcl9sb2Nr
X3Rlc3Q6IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgIMKgIMKgY29kZV9lcnJvcl9j
aGlwczogWzHDlzMxNTQ0IHNpbmdsZV08YnI+wqAgwqAgwqAgY29kZV9lcnJvcl9maWx0X2NoaXBz
OiBbMcOXMzE1NDQgc2luZ2xlXTxicj7CoCDCoCDCoCDCoCDCoCDCoCBjb2RlX2ZyZXFfY2hpcHM6
IFsxw5czMTU0NCBzaW5nbGVdPGJyPsKgIMKgIMKgIMKgY29kZV9mcmVxX3JhdGVfY2hpcHM6IFsx
w5czMTU0NCBzaW5nbGVdPC9ibG9ja3F1b3RlPjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmsgeW91
IHZlcnkgbXVjaCBmb3IgeW91ciBoZWxwIcKgPC9kaXY+LS0gPGJyPjxkaXYgZGlyPSJsdHIiIGNs
YXNzPSJnbWFpbF9zaWduYXR1cmUiIGRhdGEtc21hcnRtYWlsPSJnbWFpbF9zaWduYXR1cmUiPjxk
aXYgZGlyPSJsdHIiPlNpbmNlcmVseSw8ZGl2PlpoYW8gWHU8L2Rpdj48L2Rpdj48L2Rpdj48L2Rp
dj4NCg==
--000000000000040e76058fb25d03--


--===============1752629600184727082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1752629600184727082==--

