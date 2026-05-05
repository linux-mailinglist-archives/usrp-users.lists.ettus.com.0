Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJrtGeos+mlXKgMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 05 May 2026 19:46:18 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C874D247D
	for <lists+usrp-users@lfdr.de>; Tue, 05 May 2026 19:46:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 34AE038D98A
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2026 13:46:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778003176; bh=eJIQYwG7wp7zdB5HQBxlx3qaB4IA/+en7a3IfST2CA0=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=ItnjfSqQpQ2FeBNgpWGtuLCuIz9SX8ntzgKd6ggwg5ib5PIY8BpF3cdCEoIzx40+K
	 SKT+ba8LEWCyX0ztn3L2guZn24qMXlwUwMN1ajhWZbA40YZePqZlJEJ2njePC1xFjo
	 SgOTPKL+Fci5qsyrdeyavKD0B1LF6TbPO6R+/3KL2JoHdtmQvZV6dVwXFmkU9VeDyi
	 DX34vfJtD30+yfJvSQn9CKvV7femcO6dJpP+tCB2RmVsLDFDoC1Uvu/tpJt8XLgoZI
	 nTKmPyhoQGIWfADrNDvkfiU+WcwiXFF1cF9VGceiApALX9r8xvu6EL5J7Er1LwA9iq
	 Yz+dPiSIRA2PQ==
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 2573938D704
	for <usrp-users@lists.ettus.com>; Tue,  5 May 2026 13:46:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kVWS7ZIl";
	dkim-atps=neutral
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-bb962ce4dcfso829101566b.1
        for <usrp-users@lists.ettus.com>; Tue, 05 May 2026 10:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778003161; cv=none;
        d=google.com; s=arc-20240605;
        b=lDrkx6EV0fkLTqjv+DSAmkFa38ddXJv3EP0SIvTg1LT9HDbLfmaknrUbwL1S9QJf+j
         3hjmobR5JxvrPchNGo4EQ16suVy5LobK4mADj5xtYjmji68H8nxu+l1W5XmmdEZKgmfS
         g/+jMuXZluEnFlG4K/4I9sVVC2GaveHx3iTZIUPZPraow7eHjMlRfw4R82uHJnKkb0hD
         JuaDVckMm++6bJLEo1S3pLTVluiuICzcW3/oteNc7B3b5zyD7UKhrGEyFs4rkqWrClw5
         vyA+H8R7mnYu4wa9pZBb5Bc+r4ttSGMnIWrGatWRHtLZ9noZSJOe6IYIbUhWbq+mA4YV
         7EAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1d6pomwWb3hiIxRWZVmH8hhJxLD46JPnhvHTdpf2wOk=;
        fh=9CUBuACEF7a4/qEm7ltrWraAgj2qU8WjZ8LgOx5Sr9U=;
        b=kFq3QBqd5zdMjvNVQIBQby0BQChVgvJYodEZBXPvjChBqVZJpM909wK5jsgFkRLnvx
         N4G2ZBopfJCoUwG6wNutDc8o+Bq8xxFWUIaTdHi8e7+ml8GZQAj/hm1I7AN33S8els3L
         gm310Mb2LjExnzyXDiGSw83yHL3w2hb9qwcfYSiszBkDJtA7hS8CQfHPFWB07wHnOOC7
         +Z3Qq9AnLLGwlr0FNylNiIYLSmgnAwlqv3agAKat8Kc5PuJ4WVycdODUVN6rtpRPHJun
         cplGJJiPc+A/fIpp2CYYGxLSr4FwczAvnDSm4mb2Hcl2i2NXmcoQ0ZEcBfO2XF+oWSBl
         dxrg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778003161; x=1778607961; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1d6pomwWb3hiIxRWZVmH8hhJxLD46JPnhvHTdpf2wOk=;
        b=kVWS7ZIlWma5PqrfI5cSvxjF1ypXwY2oHUc5LwTyBju366rFwEmpplkRGvA8d7uO2G
         yT0cUT1tKklFZbVSPqhE9RL3flppU7sV5FJcwwnvr6Oo3X9oYFvNa3KC/7NpzcndAV6n
         owh4KAVDWYjYJtZ34e3+fRvcVya1M9EkYzGChstfs06QSw7SjJbMvAvra4GVrKrgggcx
         WEZTwvvfOMYCnRADxE7wSueMRWRrUFQRV9Y6k7rh12czzh23xcefbP/tns3gjD6lsSHX
         A2uBn8aYhl+f6OjA1XOYdfzeUCSeh5hc13TbtinNPar3JHfeogKsz45/3U/ZbTb6bZbP
         Mfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778003161; x=1778607961;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1d6pomwWb3hiIxRWZVmH8hhJxLD46JPnhvHTdpf2wOk=;
        b=mbCeSCzYX+AaHwvAsPRyBMthHuqR4rmXF64/w/W/f9Cdv23XEeXb3uhfBOGFLkQT4B
         gTrzqF9j0CnLuWumv68M/NkYEcQjtIKmHyyc3vk4ntHIwqC04P2StA7kZ8XamiWNEAKx
         puE7HlwRkYi+9H4Ai1Lx9tAhv2axXYxkW0Vi1w4dQj+B46sVlf78uVYJOeCfAlLlIjs2
         pp471Phi2JkiKI3zqX4MJK1YNwdk9XyZIltZfZaRptK60v1V7RaUh8x1tITlT9PQIsqq
         gsIaKygCnvgaMUTNPHIrBHLIxgneFWslA06bqbMPUkV4Rxz+3kZCB38D50s7b83JIxky
         E4QQ==
X-Gm-Message-State: AOJu0Yznw8uevY5roJppS2NtgQKJtDg3rhO1u08L8dFb5hKgB9pcc0VT
	wB7YZlF5//QDK1ezrasvuU7uH6yaXxWWDbaVXJhE7/5SB6H/wlE6zeJ5anAEAilh5taVcYJVXkZ
	oeQVrPeKYbi+K39W87tQpWgVvOZR7WYM6n3o+
X-Gm-Gg: AeBDiesLVAg7DIss8OPw2jLl37nJ7QJdMe1ZVbag/eSlsUD3ARePTHmcxvwvWZAlu9K
	8vk7kJ2UOrA52QTIItmnp4SPrlTouBwvTka3RCGhQxslaGDJFiL07jJJh/noYt5WvGzq7IwsI8N
	bEKPkZXK06PFwXM2r+NbEPlabHuoc6/YVGrxgFkMtOV352smGy1D21nL8zq34Pgt2vd4uMJ8I+5
	zj7sX/FHEUOtWIWF0vIh5MS08Jhhbn0Y0tHm+rzDu5ghqqsJN+zTSnFlv4OWzSZPliZSnxFsPGB
	huKu2xKb5J7el+Nb6fouyyoKuczv
X-Received: by 2002:a17:907:d096:b0:bc1:526c:1ee3 with SMTP id
 a640c23a62f3a-bc40df6bae4mr237227166b.13.1778003160936; Tue, 05 May 2026
 10:46:00 -0700 (PDT)
MIME-Version: 1.0
From: Brian Padalino <bpadalino@gmail.com>
Date: Tue, 5 May 2026 13:45:49 -0400
X-Gm-Features: AVHnY4KSqCAJORqw_pX7RNwCKNQWtIEdiV8axrBt3DzyNI5HY9JbkSb6_UiX9E4
Message-ID: <CAEXYVK4X6cv5zOd_9VjEpz-VvAq-BzLhOCBZHsy9kSzTE73cRA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 5C73CSAT7XWVCGNLFFCPAAMH7LJRUM4D
X-Message-ID-Hash: 5C73CSAT7XWVCGNLFFCPAAMH7LJRUM4D
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 RFSoC ADC Calibration Initialization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5C73CSAT7XWVCGNLFFCPAAMH7LJRUM4D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4545507232001752399=="
X-Rspamd-Queue-Id: 95C874D247D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[bpadalino@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,ettus.com:email]

--===============4545507232001752399==
Content-Type: multipart/alternative; boundary="000000000000d134440651159e6c"

--000000000000d134440651159e6c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I recently had an issue where the initialization of UHD ended up erroring
out with "Could not find appropriate gain for performing ADC self cal".
Reading through the code, it seemed like some strong input signal is
tripping a threshold register and causing initial calibration to fail?

When reading through PG269 about the data converters, there are a few
mentions about conditions for calibration especially regarding the freeze
pins on the converter. Specifically:

"Input signal contents at Fs/N, where N =3D 8 and 4 for the Dual and Quad
RF-ADC tile respectively, must be muted during foreground calibration of
OCB2. The signal component at the k*Fs/N bins should be less than -95 dBFs.=
"

"Gain and Time Skew calibration blocks (GCB, TSCB) should be put in freeze
mode when the input signal drops below -40 dBFs level for longer than 100
=CE=BCs."

"For applicable systems, a training signal can also be used to calibrate
the GCB and TSCB before switching the system to real time operation."

I noticed in the BD that the freeze pins aren't connected to anything. Is
there any guidance you can give with the X440 in a deployed system where
it's connected to an antenna? Are there any internal switches to disconnect
the RF ports for initialization or is this something that needs to happen
somewhere else?

Also, any guidance on signals below -40 dBFS for longer than 100 us? Are
there options in UHD to handle this a little better?

Lastly, any guidance on the initial error happening regarding the ADC self
cal would be appreciated. Have you seen this happen sporadically or is it
pretty well known the conditions that this will happen?

Thanks,
Brian

--000000000000d134440651159e6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recently had an issue where the initialization of UHD en=
ded up erroring out with &quot;Could not find appropriate gain for performi=
ng ADC self cal&quot;. Reading through the code, it seemed like some strong=
 input signal is tripping a threshold register and causing initial calibrat=
ion to fail?<div><br></div><div>When reading through PG269 about the data c=
onverters, there are a few mentions about conditions for calibration especi=
ally regarding the freeze pins on the converter. Specifically:<div><br></di=
v><div>&quot;Input signal contents at Fs/N, where N =3D 8 and 4 for the Dua=
l and Quad RF-ADC tile respectively, must be muted during foreground calibr=
ation of OCB2. The signal component at the k*Fs/N bins should be less than =
-95 dBFs.&quot;</div><div><br></div><div>&quot;Gain and Time Skew calibrati=
on blocks (GCB, TSCB) should be put in freeze mode when the input signal dr=
ops below -40 dBFs level for longer than 100 =CE=BCs.&quot;</div><div><br><=
/div><div>&quot;For applicable systems, a training signal can also be used =
to calibrate the GCB and TSCB before switching the system to real time oper=
ation.&quot;</div><div><br></div><div>I noticed in the BD that the freeze p=
ins aren&#39;t connected to anything. Is there any guidance you can give wi=
th the X440 in a deployed system where it&#39;s connected to an antenna? Ar=
e there any internal switches to disconnect the RF ports for initialization=
 or is this something that needs to happen somewhere else?</div><div><br></=
div><div>Also, any guidance on signals below -40 dBFS for longer than 100 u=
s? Are there options in UHD to handle this a little better?</div><div><br><=
/div><div>Lastly, any guidance on the initial error happening regarding the=
 ADC self cal would be appreciated. Have you seen this happen sporadically =
or is it pretty well known the conditions that this will happen?</div><div>=
<br></div><div>Thanks,</div><div>Brian</div></div></div>

--000000000000d134440651159e6c--

--===============4545507232001752399==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4545507232001752399==--
