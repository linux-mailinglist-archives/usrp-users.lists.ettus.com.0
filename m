Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC9E3FC769
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 14:39:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A56E5383E34
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 08:39:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="d/0TB0CF";
	dkim-atps=neutral
Received: from sonic315-13.consmr.mail.bf2.yahoo.com (sonic315-13.consmr.mail.bf2.yahoo.com [74.6.134.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 4AA37383E11
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 08:38:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630413532; bh=traZykLlyY731wJQ4NVooSsPttIoZdK607JWOW26aXQ=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=d/0TB0CFXOoYouNxryTWSzVuZjySCoskK3ejE9plAE6/wG6W4TfzfGyihBaliqH8eIs1893J1BTdFie8QejYi/pPxx7PyzKYEI5KeTeeS9JR2N5kT0rlk42WGaotN1M22C3wsFxVAR7mjcHE/Oz5ZAYo2L3VJNVwz83R1ep5Em9h/jmL6TguM6cKP3vsKl2I2DBQ8TyvA8Fcb9eqXnOXHC7b8FEPTlZbyl7DND7ct683Rz+eESabXKpB5kOHVLeo7UUyfCjnBgMotjMyh7IgoQHK/jKzM379cddghw/7jOwbYNMmYCNsNAzlRg3SswHKoalCqSEPNYT88llyOGLK1g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1630413532; bh=fxyDOjbJXozHdfgrloOILrjWPQ2WOKn8k9wNGTnS7+c=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ooeV/SfHkPoAXft2A2vZ9VZ8TKSbTCCawH+o6h+dP875u3ORamMIIuRJa0lnG1ip8qiaSLTHG4gSHKzWBt4x8FR7IpryZgW0B1WYv2H1Z+Fs0yrVO972mnxTrhxmzF0l68pp5R6hfNLl7yJxTc4rAg2UjKlNsKVjt3BKQCL7NmuUKG4HJJPr1ZnCLgqdc+5shu41EFJZZ5PVlNN4+QQlqUnqzfABz9fUTwZ/YDwj6tlj6DL75R1vB/qoKo5r0Gi8dkec6oIEbNimbcc3PLFfXLndyLMvgaUCowh2mLuGl3X1P+mg3mCvS/CdFk8kY/j8AOtBgJzMNybUiVyH8U3gdw==
X-YMail-OSG: _3LyyJ0VM1lk8zFRG.JCvjG7hBzFCz7Gd3LCE6wtPXKacOUHvqkkrsjHOh_mJ6J
 yljuMjh.l11Vk6k_P583ex5DcajdP5BZ6Dvry4Qtil5Y.etb7vFjlitAgNst_ybDqB_SvSEU9vw3
 K40umntt5Uz4j1Z9EkLRtsqeX94GA_DvUkdF26u4e0BS385gUTu0jGABWZfZj2tRAN_RDhGGS4Hq
 ChoxNvWXdkJ4ls7cuEsN_iLGI3hg3T3DxIdzAphNwhNcBKUuPuTtO.SBbpHI9HKnKPBlRz7LRzXa
 9UAT5pLuHRy1JHtvkBfSNehlL2fJDlcYZmamoAqkZwjQ9F_pkYupCNYzwgiofpFIL9106aMnstmo
 Wvhl.RiQmuTk_tLUpMwlBn9l2ylN1D5oFlIeFCEIoEFea58lp6EBoEgxrXMtPgwLWtrChMUuZyXk
 MKDGwYgwEycLiBVEwMryQ_.zvXsZbJ167Ge4JkaNHYzMuCN8LW87TSwXzHcq4_cPVqVGd4gByukE
 oNJ9lgNPBqeXAts7wnUXhE6bpRj__39WXh4ua_xyjW6JjIj_riu38XlefpdkqqexUqq5MJV1rlCL
 WWmi1jmQVNNL8uMd81tE2Urexhws2DeHvW0XW.lc9I3hT9RPgeuVGDfYyE5owCU1.6ZNl5GG6Mbt
 Bf.IWEzjiCRWUtxbyg9fz6dzwtUZU3f3TTLfBIUXHGGsaco0s.Vw0ktajoBmSIIZZ920Bhmot_cf
 Tad8TePuBdsbFmby6Ifg1_eu4CS54bt2aH9PuH16L_5VvspHrEN6NZ5ixHc8BJfoBvJcf72ALqh9
 5dLuorb9RuPF8s1P2YLWS47ferVrxV4a.hYmupcdyQCLrbSvacHNrJLJD.IdL5MN1X4sRbE2l0dR
 1IgIUamJrkilwOW9oH9QL_9c.8stR2bS9HZ9fz157M.0cJrnHYGE_C.7C8E2rEKHhiB2k32sOIOl
 lCVoHk.zqtrMAZLEIh4OgpattIh0zLU4oQNR6Obhy284oFV6zPCQFmpbvxhFLp0DrpqzYj50kvpA
 .pMhKlSaCttejN0wKxRuvjS.Cwkqzgw2tfGETbv9dFFLxH5yVRSVfL6uW6CMfoQAzuTJco1yD_Nm
 wBY.AiY5fz5QH7.7LilJ9iPFVUyRdFs2Q2JSxL2P78Hfkm31.8qQnYAUYzdqPOKuG_bxOHCu37qD
 PstKRZRKl43R1rz9dTkdbPZbcTsTKh9bz46tp68RZoSZxu2iW8uZ4472IC6gGa3EPB4cHmxonO0O
 CLTt5dT7WHbfegdAu4b2l1XrPAA09t3uV_Sit6cQBftuiHwIn8gtBRrsAgqpMCv1Sz5bDF1s8FNR
 oypwtXTlVBoKDIhesvRDjSHqZTmXMYXPuo9e_KIkIRqQnGDpxvzzaMkNreloDehg8rnRVqAk26Ix
 WDwriyyENdZgbSx_TV6m6iacqqt7c5gvf9aXUKLNkUFJFjOUHT.ilTQPmC9OlRBeR34z62mw6KVf
 Krq3hQjaMJVNgUTnvuisbO9jR.74oG_q6wCcDHqux1ta6TdzO9W3C75Fb48iWBKS5eniPalCS3WZ
 Rz_T8J_ZBqCHCgXqXibLIKzTmhlD6Fes.ilAibXk_FE.nQkk_tDWzxcBSyL68DX0ppiXNeO_mtd4
 E3guk4OsVh2NFQLYEoQvyZStpMzl1oSNYGTnK.3pSkepTsFUtIqBW1mp7Vc6IAtf0ldgY9369eKF
 PkPNamAG8CdvtyOsMD0sSZVChLuc5aQQn1I5p3VQXA3BtRa12sexXJe.dQLxGY6raNG7q3tMpCvf
 1hTHzpGlMZS1RLSq32vRXhQYqmAaY9A4pA_468AYzCofZb81zksHeFyFBmhmlhEcjZXpY7PNTD3O
 UaRyfM8s5KGljDdy0k6ACWSFiYk22besO_Dqg.t05ep0lANv70Umw3GUuXTv62RSk84Y.EEn3vd0
 hbGJH2e8IPB39KQ--
X-Sonic-MF: <t_whit_87@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic315.consmr.mail.bf2.yahoo.com with HTTP; Tue, 31 Aug 2021 12:38:52 +0000
Date: Tue, 31 Aug 2021 12:38:46 +0000 (UTC)
To: Usrp-users <usrp-users@lists.ettus.com>,
	Philip Balister <philip@balister.org>
Message-ID: <295061345.605389.1630413526827@mail.yahoo.com>
In-Reply-To: <a60baf67-77b9-9405-4184-31faf60ec2f5@balister.org>
References: <127551906.11620.1630090612779.ref@mail.yahoo.com> <127551906.11620.1630090612779@mail.yahoo.com> <a60baf67-77b9-9405-4184-31faf60ec2f5@balister.org>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: ANUW37USK2YQ3SG4N4WGQ3YS3CDYXY4D
X-Message-ID-Hash: ANUW37USK2YQ3SG4N4WGQ3YS3CDYXY4D
X-MailFrom: t_whit_87@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: CMake error when building UHD for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ANUW37USK2YQ3SG4N4WGQ3YS3CDYXY4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Tellrell White via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Tellrell White <t_whit_87@yahoo.com>
Content-Type: multipart/mixed; boundary="===============2817512117518415418=="

--===============2817512117518415418==
Content-Type: multipart/alternative;
	boundary="----=_Part_605388_338142292.1630413526824"

------=_Part_605388_338142292.1630413526824
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for the catch, however, UHD is still failing to build=20

After issuing the "make command", and running a make test I'm getting the f=
ollowing=20


tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ make test
Running tests...
Test project /home/tw/uhd_n310/uhd/host/build
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 1: addr_test
=C2=A01/78 Test=C2=A0 #1: addr_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 2: buffer_test
=C2=A02/78 Test=C2=A0 #2: buffer_test ......................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 3: byteswap_test
=C2=A03/78 Test=C2=A0 #3: byteswap_test ....................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 4: cast_test
=C2=A04/78 Test=C2=A0 #4: cast_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 5: cal_database_test
=C2=A05/78 Test=C2=A0 #5: cal_database_test ................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 6: cal_data_iq_test
=C2=A06/78 Test=C2=A0 #6: cal_data_iq_test .................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 7: cal_data_gain_pwr_test
=C2=A07/78 Test=C2=A0 #7: cal_data_gain_pwr_test ...........***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 8: chdr_parse_test
=C2=A08/78 Test=C2=A0 #8: chdr_parse_test ..................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start=C2=A0 9: chdr_test
=C2=A09/78 Test=C2=A0 #9: chdr_test ........................***Failed=C2=A0=
=C2=A0=C2=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 10: constrained_device_args_test
10/78 Test #10: constrained_device_args_test .....***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 11: convert_test
11/78 Test #11: convert_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 12: dict_test
12/78 Test #12: dict_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 13: eeprom_utils_test
13/78 Test #13: eeprom_utils_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 14: error_test
14/78 Test #14: error_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 15: fp_compare_delta_test
15/78 Test #15: fp_compare_delta_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 16: fp_compare_epsilon_test
16/78 Test #16: fp_compare_epsilon_test ..........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 17: gain_group_test
17/78 Test #17: gain_group_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 18: interpolation_test
18/78 Test #18: interpolation_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 19: isatty_test
19/78 Test #19: isatty_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 20: log_test
20/78 Test #20: log_test .........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 21: math_test
21/78 Test #21: math_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 22: mb_controller_test
22/78 Test #22: mb_controller_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 23: narrow_cast_test
23/78 Test #23: narrow_cast_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 24: property_test
24/78 Test #24: property_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 25: ranges_test
25/78 Test #25: ranges_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 26: rfnoc_node_test
26/78 Test #26: rfnoc_node_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 27: scope_exit_test
27/78 Test #27: scope_exit_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 28: sensors_test
28/78 Test #28: sensors_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 29: soft_reg_test
29/78 Test #29: soft_reg_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 30: sph_recv_test
30/78 Test #30: sph_recv_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 31: sph_send_test
31/78 Test #31: sph_send_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 32: subdev_spec_test
32/78 Test #32: subdev_spec_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 33: time_spec_test
33/78 Test #33: time_spec_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 34: tasks_test
34/78 Test #34: tasks_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 35: vrt_test
35/78 Test #35: vrt_test .........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 36: expert_test
36/78 Test #36: expert_test ......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 37: fe_conn_test
37/78 Test #37: fe_conn_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 38: link_test
38/78 Test #38: link_test ........................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 39: rx_streamer_test
39/78 Test #39: rx_streamer_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 40: tx_streamer_test
40/78 Test #40: tx_streamer_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 41: block_id_test
41/78 Test #41: block_id_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 42: rfnoc_property_test
42/78 Test #42: rfnoc_property_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 43: multichan_register_iface_test
43/78 Test #43: multichan_register_iface_test ....***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 44: eeprom_c_test
44/78 Test #44: eeprom_c_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 45: error_c_test
45/78 Test #45: error_c_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 46: ranges_c_test
46/78 Test #46: ranges_c_test ....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 47: sensors_c_test
47/78 Test #47: sensors_c_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 48: string_vector_c_test
48/78 Test #48: string_vector_c_test .............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 49: subdev_spec_c_test
49/78 Test #49: subdev_spec_c_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 50: system_time_test
50/78 Test #50: system_time_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 51: config_parser_test
51/78 Test #51: config_parser_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 52: paths_test
52/78 Test #52: paths_test .......................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 53: rfnoc_propprop_test
53/78 Test #53: rfnoc_propprop_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 54: rfnoc_detailgraph_test
54/78 Test #54: rfnoc_detailgraph_test ...........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 55: actions_test
55/78 Test #55: actions_test .....................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 56: rfnoc_chdr_test
56/78 Test #56: rfnoc_chdr_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 57: client_zero_test
57/78 Test #57: client_zero_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 58: addsub_block_test
58/78 Test #58: addsub_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 59: ddc_block_test
59/78 Test #59: ddc_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 60: duc_block_test
60/78 Test #60: duc_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 61: fft_block_test
61/78 Test #61: fft_block_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 62: fir_filter_block_test
62/78 Test #62: fir_filter_block_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 63: fosphor_block_test
63/78 Test #63: fosphor_block_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 64: keep_one_in_n_test
64/78 Test #64: keep_one_in_n_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 65: logpwr_block_test
65/78 Test #65: logpwr_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 66: moving_average_block_test
66/78 Test #66: moving_average_block_test ........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 67: null_block_test
67/78 Test #67: null_block_test ..................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 68: replay_block_test
68/78 Test #68: replay_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 69: siggen_block_test
69/78 Test #69: siggen_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 70: split_stream_block_test
70/78 Test #70: split_stream_block_test ..........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 71: switchboard_block_test
71/78 Test #71: switchboard_block_test ...........***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 72: vector_iir_block_test
72/78 Test #72: vector_iir_block_test ............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 73: window_block_test
73/78 Test #73: window_block_test ................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 74: transport_test
74/78 Test #74: transport_test ...................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 75: offload_io_srv_test
75/78 Test #75: offload_io_srv_test ..............***Failed=C2=A0=C2=A0=C2=
=A0 0.01 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 76: serial_number_test
76/78 Test #76: serial_number_test ...............***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 77: pwr_cal_mgr_test
77/78 Test #77: pwr_cal_mgr_test .................***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Start 78: discoverable_feature_test
78/78 Test #78: discoverable_feature_test ........***Failed=C2=A0=C2=A0=C2=
=A0 0.00 sec
All the tests seem to fail.=20



    On Friday, August 27, 2021, 03:58:38 PM EDT, Philip Balister <philip@ba=
lister.org> wrote: =20
=20
 Try

$ cmake
-DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk=
_cross.cmake
-DCMAKE_INSTALL_PREFIX=3D/usr/local/share/uhd_n310 ..

Note the ".." on the end.

Philip

On 8/27/21 2:56 PM, Tellrell White via USRP-users wrote:
> Currently, I'm trying to build UHD for the N310 on my host machine follow=
ing the link https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_fsbuil=
d and I'm getting the following error as shown.=20
>=20
>=20
> tw@tw-virtual-machine:~/uhd_n310/uhd/host/build$ cmake -DCMAKE_TOOLCHAIN_=
FILE=3D/home/tw/uhd_n310/uhd/host/cmake/Toolchains/oe-sdk_cross.cmake -DCMA=
KE_INSTALL_PREFIX=3D/usr/local/share/uhd_n310=20
> CMake Warning:
> =C2=A0 No source or binary directory provided.=C2=A0 Both will be assumed=
 to be the
> =C2=A0 same as the current working directory, but note that this warning =
will
> =C2=A0 become a fatal error in future CMake releases.
>=20
>=20
> CMake Error: The source directory "/home/tw/uhd_n310/uhd/host/build" does=
 not appear to contain CMakeLists.txt.
> Specify --help for usage, or press the help button on the CMake GUI.
>=20
>=20
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>=20
 =20
------=_Part_605388_338142292.1630413526824
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpcf90c360yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for the catch, howeve=
r, UHD is still failing to build <br></div><div dir=3D"ltr" data-setdir=3D"=
false"><br></div><div dir=3D"ltr" data-setdir=3D"false">After issuing the "=
make command", and running a make test I'm getting the following <br></div>=
<div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setd=
ir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><div>tw@tw-vi=
rtual-machine:~/uhd_n310/uhd/host/build$ make test<br>Running tests...<br>T=
est project /home/tw/uhd_n310/uhd/host/build<br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Start&nbsp; 1: addr_test<br>&nbsp;1/78 Test&nbsp; #1: addr_test .......=
.................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Start&nbsp; 2: buffer_test<br>&nbsp;2/78 Test&nbsp; #2: buffer=
_test ......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 3: byteswap_test<br>&nbsp;3/78 Test&nbs=
p; #3: byteswap_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 s=
ec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 4: cast_test<br>&nbsp;4/78=
 Test&nbsp; #4: cast_test ........................***Failed&nbsp;&nbsp;&nbs=
p; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 5: cal_database_t=
est<br>&nbsp;5/78 Test&nbsp; #5: cal_database_test ................***Faile=
d&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; =
6: cal_data_iq_test<br>&nbsp;6/78 Test&nbsp; #6: cal_data_iq_test .........=
........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; Start&nbsp; 7: cal_data_gain_pwr_test<br>&nbsp;7/78 Test&nbsp; #7: cal_=
data_gain_pwr_test ...........***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 8: chdr_parse_test<br>&nbsp;8/78 Test=
&nbsp; #8: chdr_parse_test ..................***Failed&nbsp;&nbsp;&nbsp; 0.=
00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start&nbsp; 9: chdr_test<br>&nbsp;=
9/78 Test&nbsp; #9: chdr_test ........................***Failed&nbsp;&nbsp;=
&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 10: constrained_dev=
ice_args_test<br>10/78 Test #10: constrained_device_args_test .....***Faile=
d&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 11: co=
nvert_test<br>11/78 Test #11: convert_test .....................***Failed&n=
bsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 12: dict_=
test<br>12/78 Test #12: dict_test ........................***Failed&nbsp;&n=
bsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 13: eeprom_util=
s_test<br>13/78 Test #13: eeprom_utils_test ................***Failed&nbsp;=
&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 14: error_tes=
t<br>14/78 Test #14: error_test .......................***Failed&nbsp;&nbsp=
;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 15: fp_compare_del=
ta_test<br>15/78 Test #15: fp_compare_delta_test ............***Failed&nbsp=
;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 16: fp_compa=
re_epsilon_test<br>16/78 Test #16: fp_compare_epsilon_test ..........***Fai=
led&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 17: =
gain_group_test<br>17/78 Test #17: gain_group_test ..................***Fai=
led&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 18: =
interpolation_test<br>18/78 Test #18: interpolation_test ...............***=
Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 1=
9: isatty_test<br>19/78 Test #19: isatty_test ......................***Fail=
ed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 20: l=
og_test<br>20/78 Test #20: log_test .........................***Failed&nbsp=
;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 21: math_tes=
t<br>21/78 Test #21: math_test ........................***Failed&nbsp;&nbsp=
;&nbsp; 0.01 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 22: mb_controller_=
test<br>22/78 Test #22: mb_controller_test ...............***Failed&nbsp;&n=
bsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 23: narrow_cast=
_test<br>23/78 Test #23: narrow_cast_test .................***Failed&nbsp;&=
nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 24: property_t=
est<br>24/78 Test #24: property_test ....................***Failed&nbsp;&nb=
sp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 25: ranges_test<=
br>25/78 Test #25: ranges_test ......................***Failed&nbsp;&nbsp;&=
nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 26: rfnoc_node_test<=
br>26/78 Test #26: rfnoc_node_test ..................***Failed&nbsp;&nbsp;&=
nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 27: scope_exit_test<=
br>27/78 Test #27: scope_exit_test ..................***Failed&nbsp;&nbsp;&=
nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 28: sensors_test<br>=
28/78 Test #28: sensors_test .....................***Failed&nbsp;&nbsp;&nbs=
p; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 29: soft_reg_test<br>29=
/78 Test #29: soft_reg_test ....................***Failed&nbsp;&nbsp;&nbsp;=
 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 30: sph_recv_test<br>30/7=
8 Test #30: sph_recv_test ....................***Failed&nbsp;&nbsp;&nbsp; 0=
.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 31: sph_send_test<br>31/78 =
Test #31: sph_send_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.0=
0 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 32: subdev_spec_test<br>32/78=
 Test #32: subdev_spec_test .................***Failed&nbsp;&nbsp;&nbsp; 0.=
01 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 33: time_spec_test<br>33/78 =
Test #33: time_spec_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.0=
0 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 34: tasks_test<br>34/78 Test =
#34: tasks_test .......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec=
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 35: vrt_test<br>35/78 Test #35: vr=
t_test .........................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; Start 36: expert_test<br>36/78 Test #36: expert=
_test ......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Start 37: fe_conn_test<br>37/78 Test #37: fe_conn_t=
est .....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; Start 38: link_test<br>38/78 Test #38: link_test .....=
...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Start 39: rx_streamer_test<br>39/78 Test #39: rx_streamer_te=
st .................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Start 40: tx_streamer_test<br>40/78 Test #40: tx_streamer_t=
est .................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; Start 41: block_id_test<br>41/78 Test #41: block_id_test .=
...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Start 42: rfnoc_property_test<br>42/78 Test #42: rfnoc_prope=
rty_test ..............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Start 43: multichan_register_iface_test<br>43/78 Test #4=
3: multichan_register_iface_test ....***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<b=
r>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 44: eeprom_c_test<br>44/78 Test #44:=
 eeprom_c_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 45: error_c_test<br>45/78 Test #45: er=
ror_c_test .....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; Start 46: ranges_c_test<br>46/78 Test #46: rang=
es_c_test ....................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; Start 47: sensors_c_test<br>47/78 Test #47: senso=
rs_c_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; Start 48: string_vector_c_test<br>48/78 Test #48: =
string_vector_c_test .............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 49: subdev_spec_c_test<br>49/78 Test #4=
9: subdev_spec_c_test ...............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<b=
r>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 50: system_time_test<br>50/78 Test #=
50: system_time_test .................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<=
br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 51: config_parser_test<br>51/78 Tes=
t #51: config_parser_test ...............***Failed&nbsp;&nbsp;&nbsp; 0.00 s=
ec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 52: paths_test<br>52/78 Test #52=
: paths_test .......................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 53: rfnoc_propprop_test<br>53/78 Test=
 #53: rfnoc_propprop_test ..............***Failed&nbsp;&nbsp;&nbsp; 0.00 se=
c<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 54: rfnoc_detailgraph_test<br>54/=
78 Test #54: rfnoc_detailgraph_test ...........***Failed&nbsp;&nbsp;&nbsp; =
0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 55: actions_test<br>55/78 =
Test #55: actions_test .....................***Failed&nbsp;&nbsp;&nbsp; 0.0=
0 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 56: rfnoc_chdr_test<br>56/78 =
Test #56: rfnoc_chdr_test ..................***Failed&nbsp;&nbsp;&nbsp; 0.0=
0 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 57: client_zero_test<br>57/78=
 Test #57: client_zero_test .................***Failed&nbsp;&nbsp;&nbsp; 0.=
00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 58: addsub_block_test<br>58/=
78 Test #58: addsub_block_test ................***Failed&nbsp;&nbsp;&nbsp; =
0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 59: ddc_block_test<br>59/7=
8 Test #59: ddc_block_test ...................***Failed&nbsp;&nbsp;&nbsp; 0=
.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 60: duc_block_test<br>60/78=
 Test #60: duc_block_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.=
00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 61: fft_block_test<br>61/78 =
Test #61: fft_block_test ...................***Failed&nbsp;&nbsp;&nbsp; 0.0=
1 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 62: fir_filter_block_test<br>=
62/78 Test #62: fir_filter_block_test ............***Failed&nbsp;&nbsp;&nbs=
p; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 63: fosphor_block_test<=
br>63/78 Test #63: fosphor_block_test ...............***Failed&nbsp;&nbsp;&=
nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 64: keep_one_in_n_te=
st<br>64/78 Test #64: keep_one_in_n_test ...............***Failed&nbsp;&nbs=
p;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 65: logpwr_block_=
test<br>65/78 Test #65: logpwr_block_test ................***Failed&nbsp;&n=
bsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 66: moving_aver=
age_block_test<br>66/78 Test #66: moving_average_block_test ........***Fail=
ed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 67: n=
ull_block_test<br>67/78 Test #67: null_block_test ..................***Fail=
ed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 68: r=
eplay_block_test<br>68/78 Test #68: replay_block_test ................***Fa=
iled&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 69:=
 siggen_block_test<br>69/78 Test #69: siggen_block_test ................***=
Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start 7=
0: split_stream_block_test<br>70/78 Test #70: split_stream_block_test .....=
.....***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Start 71: switchboard_block_test<br>71/78 Test #71: switchboard_block_test=
 ...........***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br>&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Start 72: vector_iir_block_test<br>72/78 Test #72: vector_iir_block=
_test ............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; Start 73: window_block_test<br>73/78 Test #73: window_block_t=
est ................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Start 74: transport_test<br>74/78 Test #74: transport_test =
...................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; Start 75: offload_io_srv_test<br>75/78 Test #75: offload_io_=
srv_test ..............***Failed&nbsp;&nbsp;&nbsp; 0.01 sec<br>&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Start 76: serial_number_test<br>76/78 Test #76: serial_n=
umber_test ...............***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Start 77: pwr_cal_mgr_test<br>77/78 Test #77: pwr_cal=
_mgr_test .................***Failed&nbsp;&nbsp;&nbsp; 0.00 sec<br>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; Start 78: discoverable_feature_test<br><div>78/78 Te=
st #78: discoverable_feature_test ........***Failed&nbsp;&nbsp;&nbsp; 0.00 =
sec</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">All the test=
s seem to fail. <br></div><br><br></div><div><br></div></div>
       =20
        </div><div id=3D"yahoo_quoted_1164857145" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Friday, August 27, 2021, 03:58:38 PM EDT, Philip Bal=
ister &lt;philip@balister.org&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div dir=3D"ltr">Try<br clear=3D"none"><br clear=3D"no=
ne">$ cmake<br clear=3D"none">-DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uh=
d/host/cmake/Toolchains/oe-sdk_cross.cmake<br clear=3D"none">-DCMAKE_INSTAL=
L_PREFIX=3D/usr/local/share/uhd_n310 ..<br clear=3D"none"><br clear=3D"none=
">Note the ".." on the end.<br clear=3D"none"><br clear=3D"none">Philip<br =
clear=3D"none"><div class=3D"yqt1845191340" id=3D"yqtfd49148"><br clear=3D"=
none">On 8/27/21 2:56 PM, Tellrell White via USRP-users wrote:<br clear=3D"=
none">&gt; Currently, I'm trying to build UHD for the N310 on my host machi=
ne following the link <a shape=3D"rect" href=3D"https://files.ettus.com/man=
ual/page_usrp_n3xx.html#n3xx_fsbuild " target=3D"_blank">https://files.ettu=
s.com/manual/page_usrp_n3xx.html#n3xx_fsbuild </a>and I'm getting the follo=
wing error as shown. <br clear=3D"none">&gt; <br clear=3D"none">&gt; <br cl=
ear=3D"none">&gt; <a shape=3D"rect" ymailto=3D"mailto:tw@tw-virtual-machine=
" href=3D"mailto:tw@tw-virtual-machine">tw@tw-virtual-machine</a>:~/uhd_n31=
0/uhd/host/build$ cmake -DCMAKE_TOOLCHAIN_FILE=3D/home/tw/uhd_n310/uhd/host=
/cmake/Toolchains/oe-sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr/local/sh=
are/uhd_n310 <br clear=3D"none">&gt; CMake Warning:<br clear=3D"none">&gt; =
&nbsp; No source or binary directory provided.&nbsp; Both will be assumed t=
o be the<br clear=3D"none">&gt; &nbsp; same as the current working director=
y, but note that this warning will<br clear=3D"none">&gt; &nbsp; become a f=
atal error in future CMake releases.<br clear=3D"none">&gt; <br clear=3D"no=
ne">&gt; <br clear=3D"none">&gt; CMake Error: The source directory "/home/t=
w/uhd_n310/uhd/host/build" does not appear to contain CMakeLists.txt.<br cl=
ear=3D"none">&gt; Specify --help for usage, or press the help button on the=
 CMake GUI.</div><br clear=3D"none">&gt; <br clear=3D"none">&gt; <br clear=
=3D"none">&gt; <br clear=3D"none">&gt; <br clear=3D"none">&gt; ____________=
___________________________________<br clear=3D"none">&gt; USRP-users maili=
ng list -- <a shape=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><b=
r clear=3D"none">&gt; To unsubscribe send an email to <a shape=3D"rect" yma=
ilto=3D"mailto:usrp-users-leave@lists.ettus.com" href=3D"mailto:usrp-users-=
leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><div class=3D"yq=
t1845191340" id=3D"yqtfd66385"><br clear=3D"none">&gt; <br clear=3D"none"><=
/div></div></div>
            </div>
        </div></body></html>
------=_Part_605388_338142292.1630413526824--

--===============2817512117518415418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2817512117518415418==--
