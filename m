Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BF133F87C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 19:53:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB76D383D5F
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 14:53:01 -0400 (EDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 80E90383555
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 14:52:03 -0400 (EDT)
Received: by mail-vs1-f51.google.com with SMTP id l4so176191vsc.7
        for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 11:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ssfQjLDARCWN1UCGt304nZek0x4zslZbw4MsJbMTods=;
        b=yk3umcckXP4TARrG8MhE8M+7fBUNo0OuZI3FXLea3FWtLsNYnH86/siCJmQfk2cGzz
         rIvWkewtwHcNHKozd432WYwbhHaw9v62oS1wJ9hdjjyrzf2k4/dTjDohtZo2HYbi5Hnb
         /YLg8p3bgU+mgZ36D5phJxK0qj7cnxHOu2PtzYrK+wvh6mxUH7wTe5jkrddFLUr663vR
         DxWs8o5c6E6REcQLD329msJvWmBMzVX35gWNF/VDu6M1b0bh+BtHZf04b9uQPMI6orcy
         SkHNQt8qXcvTjMQ+Wh7ycIjLl2nc3xtPOGz0gQlPznTk3yZajLgFB7bLu7UBdaQv2ibL
         FmpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ssfQjLDARCWN1UCGt304nZek0x4zslZbw4MsJbMTods=;
        b=nW5V28/QXpmOBikqQduPvAlxke6D7rZ9G7s2fN1Aj4/43mrj9m4Ep6aOtJnCKVahWa
         +ZkZKxjZcnWTTghLWg9NS37cLKh4l9AvMCFnXLqfdTAsOeY3rwLQSVbxh6h/RspRUMqU
         EpqJ1ux2ckIHCF+kdhT/3E0CdwCg4XNw8OtKP62HOmTU+ZCoU5gys6VVfcZTGMi0J3k6
         9VF2xFPB/Gu/EP0ujfQ1dzG8regXVcmybJFrMDCFlkeOouWTgdQ6RIcVni3pYtTPv+RZ
         /UwniZcdRhodwIGH7M2ePgu0np7Pm0T+bU/VNuHzGrLgCwQ1pp0e1pbCwma7LXHlobJI
         YRNA==
X-Gm-Message-State: AOAM533kJ6jBtH/OvsAxCNdFKshtrnwE0gWDxqm1tp0Hjh9kCJhTeryX
	OOp8GXOiLOu19TKRD/PBjqHZHz/0EnxG5G8Mr6MwV0wo1LL3cg==
X-Google-Smtp-Source: ABdhPJxyWWqSpGs4il1Tkma/T/dSpXy0Ha15ZMK/4YdDz9pVluYyu7H1PH1nslCXgxPJNjLip10GJ6qvRQD+eeKMygw=
X-Received: by 2002:a67:f997:: with SMTP id b23mr4650956vsq.7.1616007122989;
 Wed, 17 Mar 2021 11:52:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAGu8PGw-Cx7RfdQ8b7hDp6F2bhV0ASYACsL9qGa2DY0z6nrCmA@mail.gmail.com>
In-Reply-To: <CAGu8PGw-Cx7RfdQ8b7hDp6F2bhV0ASYACsL9qGa2DY0z6nrCmA@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 17 Mar 2021 14:51:27 -0400
Message-ID: <CAL7q81sF0taRktoO2jhHgXv75REgp1M3_OD9aozAGVYZOK-f6A@mail.gmail.com>
To: Sunny Sam <sunny04sam@gmail.com>
Content-Type: multipart/mixed; boundary="00000000000085932c05bdbffa39"
Message-ID-Hash: 4762SUVUBQS72IC3HGX23QX5GZMPJFUA
X-Message-ID-Hash: 4762SUVUBQS72IC3HGX23QX5GZMPJFUA
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 3 tutorial rfnoc_gain_example.cpp file
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4762SUVUBQS72IC3HGX23QX5GZMPJFUA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--00000000000085932c05bdbffa39
Content-Type: multipart/alternative; boundary="00000000000085932905bdbffa37"

--00000000000085932905bdbffa37
Content-Type: text/plain; charset="UTF-8"

Hi Sunny,

I have attached the file.

Jonathon

On Mon, Mar 15, 2021 at 7:06 PM Sunny Sam <sunny04sam@gmail.com> wrote:

> I would like to use the *rfnoc_gain_example.cpp* file to test the gain
> block I created following the RFNoC 4 workshop tutorial. It was provided
> with the RFNoC 3 tutorial in  /rfnoc-workshop/src/gain-app-example/  but I
> can seem to be able to find it.
>
> The file is referenced in the
> https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part_2.pdf
> page 105.
>
> Any help would be greatly appreciated.
>
> Thanks,
> Sunny
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000085932905bdbffa37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Sunny,<div><br></div><div>I have attached the file.</di=
v><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 15, 2021 at 7:06 PM Sunny S=
am &lt;<a href=3D"mailto:sunny04sam@gmail.com">sunny04sam@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>I would like to use the <b>rfnoc_gain_example.cpp</b> file to=
 test the gain block I created following the RFNoC 4 workshop tutorial. It =
was provided with the RFNoC 3 tutorial in=C2=A0

/rfnoc-workshop/src/gain-app-example/=C2=A0

 but I can seem to be able to find it.=C2=A0 =C2=A0=C2=A0</div><div><div></=
div></div><div>=C2=A0=C2=A0<br></div>The file is referenced in the=C2=A0<a =
href=3D"https://kb.ettus.com/images/f/f6/rfnoc3_workshop_slides_202008_part=
_2.pdf" target=3D"_blank">https://kb.ettus.com/images/f/f6/rfnoc3_workshop_=
slides_202008_part_2.pdf</a> page 105.<div><div><br></div><div>Any help=C2=
=A0would be greatly appreciated.=C2=A0</div><div><br></div><div> </div><div=
>Thanks,<br></div><div>Sunny=C2=A0</div><div><br></div><div><br></div></div=
></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000085932905bdbffa37--

--00000000000085932c05bdbffa39
Content-Type: text/x-c++src; charset="US-ASCII"; name="rfnoc_gain_example.cpp"
Content-Disposition: attachment; filename="rfnoc_gain_example.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kmdsvw3k0>
X-Attachment-Id: f_kmdsvw3k0

LyogLSotIGMrKyAtKi0gKi8KLyoKICogQ29weXJpZ2h0IDIwMTggRXR0dXMgUmVzZWFyY2gsIGEg
TmF0aW9uYWwgSW5zdHJ1bWVudHMgQ29tcGFueQogKgogKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogR1BMLTMuMC1vci1sYXRlcgogKgogKiBUaGlzIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4g
cmVkaXN0cmlidXRlIGl0IGFuZC9vciBtb2RpZnkKICogaXQgdW5kZXIgdGhlIHRlcm1zIG9mIHRo
ZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZSBhcyBwdWJsaXNoZWQgYnkKICogdGhlIEZyZWUg
U29mdHdhcmUgRm91bmRhdGlvbjsgZWl0aGVyIHZlcnNpb24gMywgb3IgKGF0IHlvdXIgb3B0aW9u
KQogKiBhbnkgbGF0ZXIgdmVyc2lvbi4KICoKICogZ3ItZXR0dXMgaXMgZGlzdHJpYnV0ZWQgaW4g
dGhlIGhvcGUgdGhhdCBpdCB3aWxsIGJlIHVzZWZ1bCwKICogYnV0IFdJVEhPVVQgQU5ZIFdBUlJB
TlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFudHkgb2YKICogTUVSQ0hBTlRBQklM
SVRZIG9yIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQVVJQT1NFLiAgU2VlIHRoZQogKiBHTlUg
R2VuZXJhbCBQdWJsaWMgTGljZW5zZSBmb3IgbW9yZSBkZXRhaWxzLgogKgogKiBZb3Ugc2hvdWxk
IGhhdmUgcmVjZWl2ZWQgYSBjb3B5IG9mIHRoZSBHTlUgR2VuZXJhbCBQdWJsaWMgTGljZW5zZQog
KiBhbG9uZyB3aXRoIGdyLWV0dHVzOyBzZWUgdGhlIGZpbGUgQ09QWUlORy4gIElmIG5vdCwgd3Jp
dGUgdG8KICogdGhlIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbiwgSW5jLiwgNTEgRnJhbmtsaW4g
U3RyZWV0LAogKiBCb3N0b24sIE1BIDAyMTEwLTEzMDEsIFVTQS4KICovCiNpbmNsdWRlIDxpb3N0
cmVhbT4KI2luY2x1ZGUgPHRocmVhZD4KI2luY2x1ZGUgPGNvbXBsZXg+CiNpbmNsdWRlIDx2ZWN0
b3I+CiNpbmNsdWRlIDxleGNlcHRpb24+CiNpbmNsdWRlIDxib29zdC9mb3JtYXQuaHBwPgojaW5j
bHVkZSA8Ym9vc3QvbGV4aWNhbF9jYXN0LmhwcD4KI2luY2x1ZGUgPGJvb3N0L3Byb2dyYW1fb3B0
aW9ucy5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPHVo
ZC91dGlscy90aHJlYWQuaHBwPgojaW5jbHVkZSA8dWhkL2RldmljZTMuaHBwPgojaW5jbHVkZSA8
dWhkL3Jmbm9jL2Jsb2NrX2N0cmwuaHBwPgojaW5jbHVkZSA8dWhkL3RyYW5zcG9ydC91ZHBfc2lt
cGxlLmhwcD4KCm5hbWVzcGFjZSBwbyA9IGJvb3N0Ojpwcm9ncmFtX29wdGlvbnM7CgpzdGF0aWMg
dm9sYXRpbGUgYm9vbCBzdG9wID0gZmFsc2U7Cgp2b2lkIHR4X3RocmVhZCgKICAgIHVoZDo6dHhf
c3RyZWFtZXI6OnNwdHIgdHhfc3RyZWFtLAogICAgY29uc3Qgc2l6ZV90IHdhdmVfdGFibGVfbGVu
Z3RoLAogICAgY29uc3QgZmxvYXQgd2F2ZV9hbXBsLAogICAgY29uc3Qgc2l6ZV90IHNwcCkKewog
ICAgLy8gU2V0dXAgc2luZSB3YXZlIHRhYmxlCiAgICBzdGQ6OnZlY3Rvcjwgc3RkOjpjb21wbGV4
PGZsb2F0PiA+IHdhdmVfdGFibGUod2F2ZV90YWJsZV9sZW5ndGgpOwogICAgZm9yIChzaXplX3Qg
aSA9IDA7IGkgPCB3YXZlX3RhYmxlLnNpemUoKTsgaSsrKSB7CiAgICAgICAgc3RhdGljIGNvbnN0
IGRvdWJsZSBwaSA9IHN0ZDo6YWNvcygtMS4wKTsKICAgICAgICB3YXZlX3RhYmxlW2ldLnJlYWwo
d2F2ZV9hbXBsKnN0ZDo6Y29zKDIuMCpwaSppL3dhdmVfdGFibGUuc2l6ZSgpKSk7CiAgICAgICAg
d2F2ZV90YWJsZVtpXS5pbWFnKHdhdmVfYW1wbCpzdGQ6OnNpbigyLjAqcGkqaS93YXZlX3RhYmxl
LnNpemUoKSkpOwogICAgfQoKICAgIHN0ZDo6dmVjdG9yPHN0ZDo6Y29tcGxleDxmbG9hdD4gPiBi
dWZmKHNwcCk7CiAgICBzdGQ6OnZlY3RvcjxzdGQ6OmNvbXBsZXg8ZmxvYXQ+ICo+IGJ1ZmZzKDEs
ICZidWZmLmZyb250KCkpOwogICAgdWhkOjp0eF9tZXRhZGF0YV90IG1kOwogICAgbWQuc3RhcnRf
b2ZfYnVyc3QgPSBmYWxzZTsKICAgIG1kLmVuZF9vZl9idXJzdCAgID0gZmFsc2U7CiAgICBtZC5o
YXNfdGltZV9zcGVjICA9IGZhbHNlOwoKICAgIHNpemVfdCBpbmRleCA9IDA7CiAgICB3aGlsZSAo
bm90IHN0b3ApIHsKICAgICAgICAvLyBGaWxsIGJ1ZmZlcgogICAgICAgIGZvciAoc2l6ZV90IG4g
PSAwOyBuIDwgYnVmZi5zaXplKCk7IG4rKykgewogICAgICAgICAgICBidWZmW25dID0gd2F2ZV90
YWJsZVtpbmRleF07CiAgICAgICAgICAgIGlmIChpbmRleCA8IHdhdmVfdGFibGUuc2l6ZSgpLTEp
IHsKICAgICAgICAgICAgICAgIGluZGV4Kys7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgZWxz
ZSB7CiAgICAgICAgICAgICAgICBpbmRleCA9IDA7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAg
ICAgICAgdHhfc3RyZWFtLT5zZW5kKGJ1ZmZzLCBidWZmLnNpemUoKSwgbWQpOwogICAgICAgIC8v
IFJlZHVjZSBvdmVyYWxsIHJhdGUgdG8gcHJldmVudCBVRFAgc291cmNlIGluIEdSIGZyb20gZHJv
cHBpbmcgcGFja2V0cwogICAgICAgIGZvciAoc2l6ZV90IGkgPSAwOyBpIDwgMTBlNjsgaSsrKSB7
CiAgICAgICAgICAgIGFzbSgibm9wIik7CiAgICAgICAgfQogICAgfQp9Cgp2b2lkIHJ4X3RocmVh
ZCgKICAgIHVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhfc3RyZWFtLAogICAgc3RkOjpzdHJpbmcg
dWRwX2FkZHIsCiAgICBzdGQ6OnN0cmluZyB1ZHBfcG9ydCwKICAgIGNvbnN0IHNpemVfdCBzcHAp
CnsKICAgIHVoZDo6cnhfbWV0YWRhdGFfdCBtZDsKICAgIHN0ZDo6dmVjdG9yPHN0ZDo6Y29tcGxl
eDxmbG9hdD4gPiBidWZmKHNwcCk7CiAgICBhdXRvIHVkcF94cG9ydCA9IHVoZDo6dHJhbnNwb3J0
Ojp1ZHBfc2ltcGxlOjptYWtlX2Nvbm5lY3RlZCh1ZHBfYWRkciwgdWRwX3BvcnQpOwoKICAgIC8v
IFN0YXJ0IHN0cmVhbWluZwogICAgdWhkOjpzdHJlYW1fY21kX3Qgc3RyZWFtX2NtZCh1aGQ6OnN0
cmVhbV9jbWRfdDo6U1RSRUFNX01PREVfU1RBUlRfQ09OVElOVU9VUyk7CiAgICBzdHJlYW1fY21k
LnN0cmVhbV9ub3cgPSB0cnVlOwogICAgcnhfc3RyZWFtLT5pc3N1ZV9zdHJlYW1fY21kKHN0cmVh
bV9jbWQpOwoKICAgIHdoaWxlKG5vdCBzdG9wKSB7CiAgICAgICAgLy8gR3JhYiBzYW1wbGVzIGZy
b20gc3RyZWFtCiAgICAgICAgc2l6ZV90IG51bV9yeF9zYW1wcyA9IHJ4X3N0cmVhbS0+cmVjdigm
YnVmZi5mcm9udCgpLCBidWZmLnNpemUoKSwgbWQpOwoKICAgICAgICAvLyBQcmludCBvdXQgYW55
IGVycm9yIGNvZGVzCiAgICAgICAgaWYgKG1kLmVycm9yX2NvZGUgIT0gdWhkOjpyeF9tZXRhZGF0
YV90OjpFUlJPUl9DT0RFX05PTkUpIHsKICAgICAgICAgICAgaWYgKG1kLmVycm9yX2NvZGUgPT0g
dWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX1RJTUVPVVQpIHsKICAgICAgICAgICAgICAg
IHN0b3AgPSB0cnVlOwogICAgICAgICAgICB9CiAgICAgICAgICAgIHN0ZDo6c3RyaW5nIGVycm9y
ID0gc3RyKGJvb3N0Ojpmb3JtYXQoIlxuUmVjZWl2ZSBlcnJvcjogJXNcbiIpICUgbWQuc3RyZXJy
b3IoKSk7CiAgICAgICAgICAgIHN0ZDo6Y2VyciA8PCBlcnJvciA8PCBzdGQ6OmVuZGw7CiAgICAg
ICAgfSAKICAgICAgICBlbHNlIHsKICAgICAgICAgICAgLy8gU2VuZCBzYW1wbGVzIG92ZXIgVURQ
CiAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICB1ZHBfeHBvcnQtPnNlbmQoYm9vc3Q6
OmFzaW86OmJ1ZmZlcihidWZmLCBudW1fcnhfc2FtcHMqc2l6ZW9mKGJ1ZmYuZnJvbnQoKSkpKTsK
ICAgICAgICAgICAgfQogICAgICAgICAgICBjYXRjaCAoY29uc3Qgc3RkOjpleGNlcHRpb24gJmV4
KSB7CiAgICAgICAgICAgICAgICBzdG9wID0gdHJ1ZTsKICAgICAgICAgICAgICAgIHN0ZDo6Y291
dCA8PCAiXG5TZW5kaW5nIFVEUCBwYWNrZXQgZmFpbGVkOiBcIiIgPDwgZXgud2hhdCgpIDw8ICJc
IiIgPDwgc3RkOjplbmRsOwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgfQp9Cgp2b2lkIHNl
dF9nYWluX3RocmVhZCh1aGQ6OnJmbm9jOjpibG9ja19jdHJsX2Jhc2U6OnNwdHIgZ2Fpbl9ibG9j
a19jdHJsKSB7CiAgICB3aGlsZSAobm90IHN0b3ApIHsKICAgICAgICBzdGQ6OnN0cmluZyBzOwoK
ICAgICAgICBzdGQ6OmNvdXQgPDwgIlxuRW50ZXIgZ2FpbiAoY3RybC1jIHRvIGV4aXQpOiAiOwog
ICAgICAgIHN0ZDo6Y2luID4+IHM7CgogICAgICAgIGlmICgocy5sZW5ndGgoKSA+IDApICYmIChu
b3Qgc3RvcCkpIHsKICAgICAgICAgICAgdHJ5IHsKICAgICAgICAgICAgICAgIHVpbnQxNl90IGdh
aW4gPSBib29zdDo6bGV4aWNhbF9jYXN0PHVpbnQxNl90PihzKTsKICAgICAgICAgICAgICAgIGdh
aW5fYmxvY2tfY3RybC0+c3Jfd3JpdGUoIkdBSU4iLCBnYWluKTsKICAgICAgICAgICAgfQogICAg
ICAgICAgICBjYXRjaCAoYm9vc3Q6OmJhZF9sZXhpY2FsX2Nhc3QpIHsKICAgICAgICAgICAgICAg
IHN0ZDo6Y291dCA8PCAiSW52YWxpZCBnYWluLiIgPDwgc3RkOjplbmRsOwogICAgICAgICAgICB9
CiAgICAgICAgfQogICAgfQp9CgppbnQgVUhEX1NBRkVfTUFJTihpbnQgYXJnYywgY2hhciAqYXJn
dltdKXsKICAgIHVoZDo6c2V0X3RocmVhZF9wcmlvcml0eV9zYWZlKCk7CgogICAgLy8gQ29tbWFu
ZCBsaW5lIG9wdGlvbnMKICAgIHN0ZDo6c3RyaW5nIHVzcnBfYXJncywgdWRwX2FkZHIsIHVkcF9w
b3J0OwogICAgc2l6ZV90IHNwcCwgd2F2ZV90YWJsZV9sZW5ndGg7CiAgICBmbG9hdCB3YXZlX2Ft
cGw7CiAgICBwbzo6b3B0aW9uc19kZXNjcmlwdGlvbiBkZXNjKCJBbGxvd2VkIG9wdGlvbnMiKTsK
ICAgIGRlc2MuYWRkX29wdGlvbnMoKQogICAgICAgICgiaGVscCIsICJoZWxwIG1lc3NhZ2UiKQog
ICAgICAgICgiYXJncyIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJnVzcnBfYXJncyktPmRlZmF1
bHRfdmFsdWUoInR5cGU9eDMwMCIpLCAiVVNSUCBkZXZpY2UgYXJncyIpCiAgICAgICAgKCJ1ZHAt
YWRkciIsIHBvOjp2YWx1ZTxzdGQ6OnN0cmluZz4oJnVkcF9hZGRyKS0+ZGVmYXVsdF92YWx1ZSgi
MTI3LjAuMC4xIiksICJVRFAgc291cmNlIGFkZHJlc3MiKQogICAgICAgICgidWRwLXBvcnQiLCBw
bzo6dmFsdWU8c3RkOjpzdHJpbmc+KCZ1ZHBfcG9ydCktPmRlZmF1bHRfdmFsdWUoIjcxMjQiKSwg
IlVEUCBzb3VyY2UgcG9ydCIpCiAgICAgICAgKCJzcHAiLCBwbzo6dmFsdWU8c2l6ZV90Pigmc3Bw
KS0+ZGVmYXVsdF92YWx1ZSgxMjgpLCAiU2FtcGxlcyBwZXIgcGFja2V0IikKICAgICAgICAoIndh
dmUtdGFibGUtbGVuZ3RoIiwgcG86OnZhbHVlPHNpemVfdD4oJndhdmVfdGFibGVfbGVuZ3RoKS0+
ZGVmYXVsdF92YWx1ZSgyMDApLAogICAgICAgICAgICAiV2F2ZSB0YWJsZSBsZW5ndGgsIGZyZXF1
ZW5jeSBpcyB0aGUgcmVjaXByb2NhbCBvZiB0YWJsZSBsZW5ndGgiKQogICAgICAgICgid2F2ZS1h
bXBsIiwgcG86OnZhbHVlPGZsb2F0Pigmd2F2ZV9hbXBsKS0+ZGVmYXVsdF92YWx1ZSgwLjEpLCAi
V2F2ZSBhbXBsaXR1ZGUiKQogICAgOwogICAgcG86OnZhcmlhYmxlc19tYXAgdm07CiAgICBwbzo6
c3RvcmUocG86OnBhcnNlX2NvbW1hbmRfbGluZShhcmdjLCBhcmd2LCBkZXNjKSwgdm0pOwogICAg
cG86Om5vdGlmeSh2bSk7CgogICAgYXV0byB1c3JwID0gdWhkOjpkZXZpY2UzOjptYWtlKHN0ZDo6
c3RyaW5nKHVzcnBfYXJncykpOwoKICAgIC8vIEdyYWIgYmxvY2sgY29udHJvbGxlcnMsIGJsb2Nr
IGlkIG5hbWUgY29tZXMgZnJvbSBibG9jayBkZXNjcmlwdCBYTUwgdGFnIDxibG9ja25hbWU+CiAg
ICBhdXRvIGZpZm9fYmxvY2tfY3RybCA9IHVzcnAtPmdldF9ibG9ja19jdHJsKHVoZDo6cmZub2M6
OmJsb2NrX2lkX3QoMCwgIkZJRk8iKSk7CiAgICBhdXRvIGdhaW5fYmxvY2tfY3RybCA9IHVzcnAt
PmdldF9ibG9ja19jdHJsKHVoZDo6cmZub2M6OmJsb2NrX2lkX3QoMCwgImdhaW4iKSk7CgogICAg
Ly8gQ3JlYXRlIGFuZCBjb25uZWN0CiAgICBhdXRvIGdyYXBoID0gdXNycC0+Y3JlYXRlX2dyYXBo
KCJnYWluX2dyYXBoIik7CiAgICBncmFwaC0+Y29ubmVjdChmaWZvX2Jsb2NrX2N0cmwtPmdldF9i
bG9ja19pZCgpLCBnYWluX2Jsb2NrX2N0cmwtPmdldF9ibG9ja19pZCgpKTsKCiAgICAvLyBTZXR1
cCByZWNlaXZlIHN0cmVhbWVyCiAgICB1aGQ6OnN0cmVhbV9hcmdzX3Qgcnhfc3RyZWFtX2FyZ3Mo
ImZjMzIiLCAic2MxNiIpOwogICAgcnhfc3RyZWFtX2FyZ3MuYXJnc1siYmxvY2tfaWQiXSA9IGdh
aW5fYmxvY2tfY3RybC0+Z2V0X2Jsb2NrX2lkKCk7CiAgICByeF9zdHJlYW1fYXJncy5hcmdzWyJz
cHAiXSA9IGJvb3N0OjpsZXhpY2FsX2Nhc3Q8c3RkOjpzdHJpbmc+KHNwcCk7CiAgICBhdXRvIHJ4
X3N0cmVhbSA9IHVzcnAtPmdldF9yeF9zdHJlYW0ocnhfc3RyZWFtX2FyZ3MpOwoKICAgIC8vIFNl
dHVwIHRyYW5zbWl0IHN0cmVhbWVyCiAgICB1aGQ6OnN0cmVhbV9hcmdzX3QgdHhfc3RyZWFtX2Fy
Z3MoImZjMzIiLCAic2MxNiIpOwogICAgdHhfc3RyZWFtX2FyZ3MuYXJnc1siYmxvY2tfaWQiXSA9
IGZpZm9fYmxvY2tfY3RybC0+Z2V0X2Jsb2NrX2lkKCk7CiAgICB0eF9zdHJlYW1fYXJncy5hcmdz
WyJzcHAiXSA9IGJvb3N0OjpsZXhpY2FsX2Nhc3Q8c3RkOjpzdHJpbmc+KHNwcCk7CiAgICBhdXRv
IHR4X3N0cmVhbSA9IHVzcnAtPmdldF90eF9zdHJlYW0odHhfc3RyZWFtX2FyZ3MpOwoKICAgIGF1
dG8gdHhfdGhyZWFkX2luc3QgPSBzdGQ6OnRocmVhZCgmdHhfdGhyZWFkLCB0eF9zdHJlYW0sIHdh
dmVfdGFibGVfbGVuZ3RoLCB3YXZlX2FtcGwsIHNwcCk7CiAgICBhdXRvIHJ4X3RocmVhZF9pbnN0
ID0gc3RkOjp0aHJlYWQoJnJ4X3RocmVhZCwgcnhfc3RyZWFtLCB1ZHBfYWRkciwgdWRwX3BvcnQs
IHNwcCk7CiAgICBhdXRvIHNldF9nYWluX3RocmVhZF9pbnN0ID0gc3RkOjp0aHJlYWQoJnNldF9n
YWluX3RocmVhZCwgZ2Fpbl9ibG9ja19jdHJsKTsKICAgIHR4X3RocmVhZF9pbnN0LmpvaW4oKTsK
ICAgIHJ4X3RocmVhZF9pbnN0LmpvaW4oKTsKICAgIHNldF9nYWluX3RocmVhZF9pbnN0LmRldGFj
aCgpOwoKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwgPDwgIkRvbmUhIiA8PCBzdGQ6OmVuZGwg
PDwgc3RkOjplbmRsOwogICAgcmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQo=
--00000000000085932c05bdbffa39
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--00000000000085932c05bdbffa39--
