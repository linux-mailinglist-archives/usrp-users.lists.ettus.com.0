Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 554F8390107
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 14:32:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 53138384291
	for <lists+usrp-users@lfdr.de>; Tue, 25 May 2021 08:32:24 -0400 (EDT)
Received: from mxout2.rambler.ru (mxout2.rambler.ru [81.19.78.101])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FC7C383F88
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 08:31:21 -0400 (EDT)
Received: from localhost (1vm0043.prod.mail.rambler.tech [10.140.184.15])
	by mxout2.rambler.ru (Postfix) with ESMTP id C687C8DC0B7
	for <usrp-users@lists.ettus.com>; Tue, 25 May 2021 15:31:19 +0300 (MSK)
Date: Tue, 25 May 2021 12:31:19 +0000
Mime-Version: 1.0
Message-Id: <a638ffa1235ad3f3f0b58a401ed1669b@mail.rambler.ru>
In-Reply-To: <830ab06b95e9d2802b0a4a2455f6b301@mail.rambler.ru>
References: <830ab06b95e9d2802b0a4a2455f6b301@mail.rambler.ru>
	<0f34e1d2b5e7b77bc818377793c427dd@mail.rambler.ru>
	<2a9683d393b9962474a1e25b84853e3a@mail.rambler.ru>
To: "Usrp Users" <usrp-users@lists.ettus.com>
X-Mailer: Rambler Compose (1018495), https://mail.rambler.ru
Message-ID-Hash: YQHTMPDYHCD7IUYEINOV3PLS6QQT7BNA
X-Message-ID-Hash: YQHTMPDYHCD7IUYEINOV3PLS6QQT7BNA
X-MailFrom: andrew4010@rambler.ru
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tune speed
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQHTMPDYHCD7IUYEINOV3PLS6QQT7BNA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?b?0JDQvdC00YDQtdC5INCQIHZpYSBVU1JQLXVzZXJz?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?b?0JDQvdC00YDQtdC5INCQ?= <andrew4010@rambler.ru>
Content-Type: multipart/mixed; boundary="===============6526894155393022056=="

--===============6526894155393022056==
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary="==bound.0.45470cc50161c9530b5db9b3daf3c5aa.mail.rambler.ru=="

--==bound.0.45470cc50161c9530b5db9b3daf3c5aa.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/plain; charset=utf-8

#include <stdio.h>
#include <time.h>
#include <uhd.h>

#define SR 25
#define BW 20
#define MHzToHz 1e+6

uint64_t get_posix_clock_time ()
{
    struct timespec ts;

    if (clock_gettime (CLOCK_MONOTONIC, &ts) =3D=3D 0)
        return (uint64_t) (ts.tv_sec * 1000000 + ts.tv_nsec / 1000);
    else
        return 0;
}

uhd_error createLockedSensor(uhd_usrp_handle hDevice,uhd_sensor_value_handl=
e *hSensor)
{
    uhd_error r;

    r =3D uhd_sensor_value_make_from_bool(hSensor,"lo_locked",false,"true",=
"false");
    if (r) return r;

    r =3D uhd_usrp_get_rx_sensor(hDevice,"lo_locked",0,hSensor);
    if (r)
    uhd_sensor_value_free(hSensor);
    return r;
}

uhd_error setFreq(uhd_usrp_handle hDevice,uhd_sensor_value_handle hSensor,d=
ouble f)
{
    uhd_tune_request_t tune_request =3D
    {
        .target_freq =3D f,
        .rf_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,
        .dsp_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,
    };
    uhd_tune_result_t tune_result;

    uhd_error r;
    bool lo_locked;

    r =3D uhd_usrp_set_rx_freq(hDevice,&tune_request,0,&tune_result);
    if(r=3D=3DUHD_ERROR_NONE && hSensor)
    do
    {
        uhd_sensor_value_to_bool(hSensor,&lo_locked);
    }
    while (!lo_locked);

    return r;
}

int main()
{
    uhd_error r;

    uhd_usrp_handle hDevice =3D 0;
    uhd_sensor_value_handle hSensor=3D0;

    r =3D uhd_usrp_make(&hDevice,"");
    if (r) goto free_device;

    r =3D createLockedSensor(hDevice,&hSensor);
    if (r) goto free_device;

    if (hDevice)
    {
        int f_start,f_count;

        printf ("Enter start freq [MHz]: ");
        scanf ("%d",&f_start);

        printf ("Enter freq count: ");
        scanf ("%d",&f_count);
        if (f_count < 1) goto free_device;

        uint64_t t0,t;

        bool reverse =3D false;

        for(int k=3D3;k>0;--k)
        {
            int f;

            if (reverse)
                f =3D f_start+BW*(f_count-1);
            else
                f =3D f_start;

            t=3Dget_posix_clock_time();
            for(int i=3D0;i<f_count;i++)
            {
                t0 =3D get_posix_clock_time();
                setFreq(hDevice,hSensor,f*MHzToHz);
                t0 =3D get_posix_clock_time() - t0;
                printf ("f: %d t: %2.1f \n",f,t0*1e-3);
                f =3D (reverse) ? f-BW:f+BW;
            }
            t =3D get_posix_clock_time() - t;

            reverse=3D!reverse;

            printf (">> scan time: %2.1f \n",t*1e-3);
        }
    }

    free_device:
        if (hDevice)
        uhd_usrp_free(&hDevice);
        if (hSensor)
        uhd_sensor_value_free(&hSensor);

    return 0;
}

--==bound.0.45470cc50161c9530b5db9b3daf3c5aa.mail.rambler.ru==
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
Content-Type: text/html; charset=utf-8

<div><pre class=3D"western">#include &lt;stdio.h&gt;
#include &lt;time.h&gt;
#include &lt;uhd.h&gt;

#define SR 25
#define BW 20
#define MHzToHz 1e+6

uint64_t get_posix_clock_time ()
{
    struct timespec ts;

    if (clock_gettime (CLOCK_MONOTONIC, &amp;ts) =3D=3D 0)
        return (uint64_t) (ts.tv_sec * 1000000 + ts.tv_nsec / 1000);
    else
        return 0;
}

uhd_error createLockedSensor(uhd_usrp_handle hDevice,uhd_sensor_value_handl=
e *hSensor)
{
    uhd_error r;

    r =3D uhd_sensor_value_make_from_bool(hSensor,"lo_locked",false,"true",=
"false");
    if (r) return r;

    r =3D uhd_usrp_get_rx_sensor(hDevice,"lo_locked",0,hSensor);
    if (r)
    uhd_sensor_value_free(hSensor);
    return r;
}

uhd_error setFreq(uhd_usrp_handle hDevice,uhd_sensor_value_handle hSensor,d=
ouble f)
{
    uhd_tune_request_t tune_request =3D
    {
        .target_freq =3D f,
        .rf_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,
        .dsp_freq_policy =3D UHD_TUNE_REQUEST_POLICY_AUTO,
    };
    uhd_tune_result_t tune_result;

    uhd_error r;
    bool lo_locked;

    r =3D uhd_usrp_set_rx_freq(hDevice,&amp;tune_request,0,&amp;tune_result=
);
    if(r=3D=3DUHD_ERROR_NONE &amp;&amp; hSensor)
    do
    {
        uhd_sensor_value_to_bool(hSensor,&amp;lo_locked);
    }
    while (!lo_locked);

    return r;
}

int main()
{
    uhd_error r;

    uhd_usrp_handle hDevice =3D 0;
    uhd_sensor_value_handle hSensor=3D0;

    r =3D uhd_usrp_make(&amp;hDevice,"");
    if (r) goto free_device;

    r =3D createLockedSensor(hDevice,&amp;hSensor);
    if (r) goto free_device;

    if (hDevice)
    {
        int f_start,f_count;

        printf ("Enter start freq [MHz]: ");
        scanf ("%d",&amp;f_start);

        printf ("Enter freq count: ");
        scanf ("%d",&amp;f_count);
        if (f_count &lt; 1) goto free_device;

        uint64_t t0,t;

        bool reverse =3D false;

        for(int k=3D3;k&gt;0;--k)
        {
            int f;

            if (reverse)
                f =3D f_start+BW*(f_count-1);
            else
                f =3D f_start;

            t=3Dget_posix_clock_time();
            for(int i=3D0;i&lt;f_count;i++)
            {
                t0 =3D get_posix_clock_time();
                setFreq(hDevice,hSensor,f*MHzToHz);
                t0 =3D get_posix_clock_time() - t0;
                printf ("f: %d t: %2.1f \n",f,t0*1e-3);
                f =3D (reverse) ? f-BW:f+BW;
            }
            t =3D get_posix_clock_time() - t;

            reverse=3D!reverse;

            printf ("&gt;&gt; scan time: %2.1f \n",t*1e-3);
        }
    }

    free_device:
        if (hDevice)
        uhd_usrp_free(&amp;hDevice);
        if (hSensor)
        uhd_sensor_value_free(&amp;hSensor);

    return 0;
}
</pre></div>
--==bound.0.45470cc50161c9530b5db9b3daf3c5aa.mail.rambler.ru==--

--===============6526894155393022056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6526894155393022056==--
