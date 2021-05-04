Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2653C372D80
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 18:02:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 18D10384881
	for <lists+usrp-users@lfdr.de>; Tue,  4 May 2021 12:02:25 -0400 (EDT)
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A917D383B32
	for <usrp-users@lists.ettus.com>; Tue,  4 May 2021 12:01:27 -0400 (EDT)
Date: Tue, 4 May 2021 16:01:27 +0000
To: usrp-users@lists.ettus.com
From: jcasallas2019@gmail.com
Message-ID: <rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: CAB__hTSmthBxasOB2AQivKhCOvcac_FeUBO51RDYzfo+eXrCYA@mail.gmail.com
MIME-Version: 1.0
Message-ID-Hash: BMIB6K5OPNLD7DS7ZQWNZSO4OXH4FEXN
X-Message-ID-Hash: BMIB6K5OPNLD7DS7ZQWNZSO4OXH4FEXN
X-MailFrom: jcasallas2019@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC FFT size > 1024
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BMIB6K5OPNLD7DS7ZQWNZSO4OXH4FEXN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3104725889897212901=="

This is a multi-part message in MIME format.

--===============3104725889897212901==
Content-Type: multipart/alternative;
 boundary="b1_rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rob,

I was looking for a place to set those values RESIZE_OUTPUT_PACKET, SIMPL=
E_MODE and I assumed they will be set in the yaml descriptor file **fft_1=
x64.yml** under parameters section, please correct me if I am wrong.=20

On the other hand, I was trying to find the signal =E2=80=9Cm_axis_pkt_le=
n_t\*=E2=80=9D but I did not find it, I was looking here: https://github.=
com/EttusResearch/fpga/blob/master/usrp3/lib/rfnoc/blocks/rfnoc_block_fft=
/rfnoc_block_fft.v, could you point me to the right place?. Also, I was l=
ooking into the RFNoC specification but no luck.

Thanks

--b1_rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Rob,</p><p><br></p><p>I was looking for a place to set those values=
 RESIZE_OUTPUT_PACKET, SIMPLE_MODE and I assumed they will be set in the =
yaml descriptor file <strong>fft_1x64.yml</strong> under parameters secti=
on, please correct me if I am wrong. </p><p>On the other hand, I was tryi=
ng to find the signal =E2=80=9Cm_axis_pkt_len_t*=E2=80=9D but I did not f=
ind it, I was looking here: https://github.com/EttusResearch/fpga/blob/ma=
ster/usrp3/lib/rfnoc/blocks/rfnoc_block_fft/rfnoc_block_fft.v, could you =
point me to the right place?. Also, I was looking into the RFNoC specific=
ation but no luck.</p><p><br></p><p>Thanks</p>


--b1_rEpI0oNgFN3mXYdbiiSi0kvisclmWY4OyuyDj1KM--

--===============3104725889897212901==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3104725889897212901==--
