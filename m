Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gb4QIv+O+mkqPwMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 02:44:47 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A844D4FD7
	for <lists+usrp-users@lfdr.de>; Wed, 06 May 2026 02:44:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AACB638AC5F
	for <lists+usrp-users@lfdr.de>; Tue,  5 May 2026 20:44:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1778028285; bh=qjCy+pCeeoaUC+7OrAWynMK/tbPA/DtUYrzqFPaIXTE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JaoLZMzcl3XZPTnES4tGN08iaeGsCypq9U8w6kPe48RoiDOZRySqDAhtmQdaY9Ayx
	 yH45i8kwzBrnGfyaxHRwIN2CDSlh+hohKYVv2Zui1EVL19VY3a2NX9r6lO1PzGQa1h
	 O8CKpqtbVbdUW3Dmz8TyulChkm6hwmI41qOg+GoYnJqLA3cbvCZns0vFhrBjYQVEck
	 I91gZ3wlBs3qt7gvnnWndxIWzUGVtvJHivlF7STSGOZWlqXBoNqcC9ddIyYe3lllQ+
	 J/PlcIV4jObc0IdssRl0Oc8at9jTJ0ug8CNKO581Q4vfZ1wRfNw1E2xdD9/Rmrj6hv
	 GLXxObeHhT9Ig==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 914E838A392
	for <usrp-users@lists.ettus.com>; Tue,  5 May 2026 20:43:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W4THxMbU";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-671c24f23b1so8998507a12.0
        for <usrp-users@lists.ettus.com>; Tue, 05 May 2026 17:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778028213; cv=none;
        d=google.com; s=arc-20240605;
        b=j1OiCaUkttmK5KI9jLOq/Msxnr5tqEgEKfgAJD1bjHqb0ibFjVrSwywqaqmkP/C5f/
         jkaCZM39BK2rxFjzaJN2yF3B7oVAWpUIpDRmNxITXUGtGrw45q130oPMY/b95lw0ajPn
         6zHsJ6yZ5qMBd49N1gDWZFE32K94+XGe3PnNoLwft77KDlTNnoMC/voOHuCL+DArEo+V
         WdGRW08grz+/e7h3SVqXpacy/PXhm3DKjGSrPKzfWgveEKLRd6xUt2PV1CgEFKMxqRtD
         NW+ehBs7Gw0UGVPrFjoksiJ+Wm6brig5xQK4zY5qQos/nffADWuaJnchvv9dVrTmmy1Z
         Y3BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=92OzFCrV/Ce2wZAASxHznOxHnbYGsktYhNuNtaCOaSE=;
        fh=E8ml3EKGeisGT2nQTuEadRn+afo3ecVfPL/z8U4k8Vs=;
        b=FggW+WWhq1Hc77cRi3JuCHJHhz+Bpc8W2qY12affoSUyrcQ2gvRhIEs51Z8d9i89uj
         ygCZQGQTcXtER567UY2WZYjHhFk3T6MabT7NE23J/m8nq+ZjFO44KZOcQwg94Haseg1/
         875w/gan041aZkfkZWLIuucbLS2bnn4ekNkpJUElcH8vSJTfxc+kE3OVD448HT5Q8oiT
         VCdcvyzVLMILB34dFs1Of6kFIfVv8fdKzWZkrxrSd0x64JsD+d+r6Z8gjQ5RaMevNAM/
         AnBDWlj6YrRMbi1AuVEOKcatnlG8Dbi475ZGVmdf4LRT1cAahWzjZnWrgqizf/opePcX
         qRgg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778028213; x=1778633013; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=92OzFCrV/Ce2wZAASxHznOxHnbYGsktYhNuNtaCOaSE=;
        b=W4THxMbUwC5e7jZS4vXHA9WGkqZwXjk2NnkHF0LaRi8QpKZUkvO5WBqDMQGc5OaN6f
         dZPW0fOHvZ//7ZjQko5jQX1r27gJ6yotzNqNGDHOjkVcd7M2A1/+9JF1YKOFiL0/MmfA
         sRZ3zKXvcegzUaPkMSOnZFF9PEH1zCUuVYmpOAGWDZ5+JxN45yAebLnLWNIYwwO+bfBu
         lGMerHnn6Fv3Wvd2dMAyqyrKGa+vO7/x3HrFPGPD3ZZpMpTR5ko4YyjZRc6UK3utVrMW
         5dl012LfAKdvZ8k5CABiQxoCgQtB5V/sKx/7VCbUr5DyXB1c33WGk2moAw3eiBWuzsxO
         9ElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778028213; x=1778633013;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=92OzFCrV/Ce2wZAASxHznOxHnbYGsktYhNuNtaCOaSE=;
        b=e71LHdprjIpXEpSakvEVTVDtAoQcnCOxjkeVQJaxH87w+W8BjYRBfNFZAvO00Z4LLY
         1knJ+za8SLUOazVYiHGWzVXLVDLe4t750oPoLy5EP+mXZkxTKzvMCCWQj2kjYYcPnljw
         FXxeI3lUfJGiB1BmZniUlRdCBv4QpIU/NOjASkN2xNhqx+uoeJjWl0lJQCqbOkgenbx2
         TKLHhexDV77zR4Fx5eQ0xw/+AoJUwJ2+nCHDkYtA6Dr78zq40IWP04zpaEbzYmtw+QZj
         AwHMctdx5OcoQpgK9LoJn+wohN/L8dCEUTVbPpX3N9t5Aj+XDZ1FAOS+p2dk1yV6sbX0
         jxng==
X-Gm-Message-State: AOJu0YwvryD7XpYcHKrPtkCAv6SV8NV1Vg+PnsFrfQveBIt9gPNYDEPz
	A9GxmhIaFZCI4tmyDbY9E9Ja4NY/FoMxJ16TWrfmLShZwU0b+Ko8O42aem/l6L6/XZn642LW+HB
	1dxvb1P3O+NpaqWJwe6Ramf0IaQzWbk0=
X-Gm-Gg: AeBDietXrKTNbDZzJzpEz/owWUhrmQuSiwhpwqAtcxDHNfn14fxp/+7KkbvuTfS1m3v
	5gPgufG7rXx6KlBOFZjfH1zCZcuNnRYZhZ4zOhTYKoWKrj0NQB/2zDi1DbCZQ1K/TUZynjSXzUM
	9jfHYg8CsrBGpGFbkAPzLutLKKr2B8E5xA67Q0OdfZ47my86QPfFrF0vwkKpv8NLZeAwpa+Pf+D
	lbhAp8CeJBWNwzATaa5gmlMFJp7K+Oqn2gKZrHoZoKQOh5uaiW+M8LiR/en6oW4JLVKWRLAVRJ9
	OG7KfPELt8/gvyCiQQ==
X-Received: by 2002:a05:6402:3220:b0:672:f7a:1e7 with SMTP id
 4fb4d7f45d1cf-67d642c9234mr322243a12.17.1778028213312; Tue, 05 May 2026
 17:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4X6cv5zOd_9VjEpz-VvAq-BzLhOCBZHsy9kSzTE73cRA@mail.gmail.com>
In-Reply-To: <CAEXYVK4X6cv5zOd_9VjEpz-VvAq-BzLhOCBZHsy9kSzTE73cRA@mail.gmail.com>
From: Chris Rogers <c1337rogers@gmail.com>
Date: Tue, 5 May 2026 20:43:22 -0400
X-Gm-Features: AVHnY4Ly-MxIb8c70rKvjtDuFn57adaP4TxkgU6jDu7dfwPjw8CODD1SsF0cwNI
Message-ID: <CAOEzSFToGU3o=rBOyEKBe-fTR6oP_ThdTkTYc2pLWgZDTBS3VA@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: VAQLIGAM6D3XOFVLD5AHFWED2ZWHOI5H
X-Message-ID-Hash: VAQLIGAM6D3XOFVLD5AHFWED2ZWHOI5H
X-MailFrom: c1337rogers@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFSoC ADC Calibration Initialization
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VAQLIGAM6D3XOFVLD5AHFWED2ZWHOI5H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1719193988158052714=="
X-Rspamd-Queue-Id: 12A844D4FD7
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
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_MIXED(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[c1337rogers@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]

--===============1719193988158052714==
Content-Type: multipart/alternative; boundary="0000000000000e20fa06511b74b9"

--0000000000000e20fa06511b74b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Brian,

I had this exact same issue on my X440, and Im currently debugging it with
NI Support. They believe it's a hardware fault and the unit needs to be
RMA'd. I was instructed to run x4xx_query_adc_threshold.py from
uhd/host/utils (you can scp this onto the device and run it on there) and
check if all channels return values between 4000 and 5000. My channel that
was erroring consistently returned a value around 500, and they said that
confirms the hardware problem and I need to request a repair.

Good luck,
Chris

On Tue, May 5, 2026 at 1:46=E2=80=AFPM Brian Padalino <bpadalino@gmail.com>=
 wrote:

> I recently had an issue where the initialization of UHD ended up erroring
> out with "Could not find appropriate gain for performing ADC self cal".
> Reading through the code, it seemed like some strong input signal is
> tripping a threshold register and causing initial calibration to fail?
>
> When reading through PG269 about the data converters, there are a few
> mentions about conditions for calibration especially regarding the freeze
> pins on the converter. Specifically:
>
> "Input signal contents at Fs/N, where N =3D 8 and 4 for the Dual and Quad
> RF-ADC tile respectively, must be muted during foreground calibration of
> OCB2. The signal component at the k*Fs/N bins should be less than -95 dBF=
s."
>
> "Gain and Time Skew calibration blocks (GCB, TSCB) should be put in freez=
e
> mode when the input signal drops below -40 dBFs level for longer than 100
> =CE=BCs."
>
> "For applicable systems, a training signal can also be used to calibrate
> the GCB and TSCB before switching the system to real time operation."
>
> I noticed in the BD that the freeze pins aren't connected to anything. Is
> there any guidance you can give with the X440 in a deployed system where
> it's connected to an antenna? Are there any internal switches to disconne=
ct
> the RF ports for initialization or is this something that needs to happen
> somewhere else?
>
> Also, any guidance on signals below -40 dBFS for longer than 100 us? Are
> there options in UHD to handle this a little better?
>
> Lastly, any guidance on the initial error happening regarding the ADC sel=
f
> cal would be appreciated. Have you seen this happen sporadically or is it
> pretty well known the conditions that this will happen?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000e20fa06511b74b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Brian,</div><div><br></div><div>I had this exact s=
ame issue on my X440, and Im currently debugging it with NI Support. They b=
elieve it&#39;s a hardware fault and the unit needs to be RMA&#39;d. I was =
instructed to run=C2=A0x4xx_query_adc_threshold.py from uhd/host/utils (you=
 can scp this onto the device and run it on there) and check if all channel=
s return values between 4000 and 5000. My channel that was erroring consist=
ently returned a value around 500, and they said that confirms the hardware=
 problem and I need to request a repair.=C2=A0<br><br></div><div>Good luck,=
</div><div>Chris</div></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, May 5, 2026 at 1:46=E2=
=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.com">bpadalin=
o@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">I recently had an issue where the initializatio=
n of UHD ended up erroring out with &quot;Could not find appropriate gain f=
or performing ADC self cal&quot;. Reading through the code, it seemed like =
some strong input signal is tripping a threshold register and causing initi=
al calibration to fail?<div><br></div><div>When reading through PG269 about=
 the data converters, there are a few mentions about conditions for calibra=
tion especially regarding the freeze pins on the converter. Specifically:<d=
iv><br></div><div>&quot;Input signal contents at Fs/N, where N =3D 8 and 4 =
for the Dual and Quad RF-ADC tile respectively, must be muted during foregr=
ound calibration of OCB2. The signal component at the k*Fs/N bins should be=
 less than -95 dBFs.&quot;</div><div><br></div><div>&quot;Gain and Time Ske=
w calibration blocks (GCB, TSCB) should be put in freeze mode when the inpu=
t signal drops below -40 dBFs level for longer than 100 =CE=BCs.&quot;</div=
><div><br></div><div>&quot;For applicable systems, a training signal can al=
so be used to calibrate the GCB and TSCB before switching the system to rea=
l time operation.&quot;</div><div><br></div><div>I noticed in the BD that t=
he freeze pins aren&#39;t connected to anything. Is there any guidance you =
can give with the X440 in a deployed system where it&#39;s connected to an =
antenna? Are there any internal switches to disconnect the RF ports for ini=
tialization or is this something that needs to happen somewhere else?</div>=
<div><br></div><div>Also, any guidance on signals below -40 dBFS for longer=
 than 100 us? Are there options in UHD to handle this a little better?</div=
><div><br></div><div>Lastly, any guidance on the initial error happening re=
garding the ADC self cal would be appreciated. Have you seen this happen sp=
oradically or is it pretty well known the conditions that this will happen?=
</div><div><br></div><div>Thanks,</div><div>Brian</div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000000e20fa06511b74b9--

--===============1719193988158052714==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1719193988158052714==--
